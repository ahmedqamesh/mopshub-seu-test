//
// Verilog Module I2C_HC_TestMaster_lib.axi_control_unit
//
// Created:
//          by - lehmann.edagrp (chipdev2.physik.uni-wuppertal.de)
//          at - 14:19:11 06/14/16
//
// using Mentor Graphics HDL Designer(TM) 2015.1b (Build 4)
//

`resetall
`timescale 1ns/10ps
module axi_control_unit( 
   input   wire            S_AXI_ACLK, 
   input   wire            S_AXI_ARESETN, 
   input   wire    [9:0]   S_AXI_AWADDR, 
   input   wire            S_AXI_AWVALID, 
   output  reg             S_AXI_AWREADY, 
   input   wire    [31:0]  S_AXI_WDATA, 
   input   wire    [3:0]   S_AXI_WSTRB, 
   input   wire            S_AXI_WVALID, 
   output  reg             S_AXI_WREADY, 
   output  wire    [1:0]   S_AXI_BRESP, 
   output  reg             S_AXI_BVALID, 
   input   wire            S_AXI_BREADY, 
   input   wire    [9:0]   S_AXI_ARADDR, 
   input   wire            S_AXI_ARVALID, 
   output  reg             S_AXI_ARREADY, 
   output  reg     [31:0]  S_AXI_RDATA, 
   output  wire    [1:0]   S_AXI_RRESP, 
   output  reg             S_AXI_RVALID, 
   input   wire            S_AXI_RREADY, 
   output  wire    [6:0]   slave_addr, 
   output  wire    [3:0]   tx_nb_bytes, 
   output  wire    [3:0]   rx_nb_bytes, 
   output  wire            tx_start, 
   output  wire            rx_start, 
   output  wire    [7:0]   tx_byte0, 
   output  wire    [7:0]   tx_byte1, 
   output  wire    [7:0]   tx_byte2, 
   output  wire    [7:0]   tx_byte3, 
   output  wire    [7:0]   tx_byte4, 
   output  wire    [7:0]   tx_byte5, 
   output  wire    [7:0]   tx_byte6, 
   output  wire    [7:0]   tx_byte7, 
   output  wire    [7:0]   tx_byte8, 
   output  wire    [7:0]   tx_byte9, 
   output  wire    [7:0]   tx_byte10, 
   output  wire    [7:0]   tx_byte11, 
   output  wire    [7:0]   tx_byte12, 
   output  wire    [7:0]   tx_byte13, 
   output  wire    [7:0]   tx_byte14, 
   output  wire    [7:0]   tx_byte15, 
   input   wire            done, 
   input   wire    [3:0]   tx_bytes_sent, 
   input   wire    [3:0]   rx_bytes_sent, 
   input   wire    [12:0]  rx_byte0, 
   input   wire    [12:0]  rx_byte1, 
   input   wire    [12:0]  rx_byte2, 
   input   wire    [12:0]  rx_byte3, 
   input   wire    [12:0]  rx_byte4, 
   input   wire    [12:0]  rx_byte5, 
   input   wire    [12:0]  rx_byte6, 
   input   wire    [12:0]  rx_byte7, 
   input   wire    [12:0]  rx_byte8, 
   input   wire    [12:0]  rx_byte9, 
   input   wire    [12:0]  rx_byte10, 
   input   wire    [12:0]  rx_byte11, 
   input   wire    [12:0]  rx_byte12, 
   input   wire    [12:0]  rx_byte13, 
   input   wire    [12:0]  rx_byte14, 
   input   wire    [12:0]  rx_byte15
);

// ### Please start your Verilog code here ###
// Internal Declarations
reg [9:0]   axi_araddr;
reg [9:0]   axi_awaddr;
reg         read_en;
wire        write_en;
wire [7:0]  loc_raddr;
wire [7:0]  loc_waddr;
reg [31:0]  data_out;

// writable registers
reg [7:0] tx_byte_reg [0:15];
reg [16:0] ctrl_reg;


//---------------------------------------------------------------------------
// AXI interface
//---------------------------------------------------------------------------

// assign signals
assign S_AXI_BRESP = 2'b00;
assign S_AXI_RRESP = 2'b00;

// control signal buffers
always @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN)
begin
  if (~S_AXI_ARESETN) 
    S_AXI_AWREADY <= 0; 
  else begin
    // axi_awready is asserted for one S_AXI_ACLK clock cycle when both
    // S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
    // de-asserted when reset is active.
    if (S_AXI_AWVALID && S_AXI_WVALID && (~S_AXI_AWREADY)) 
      // slave is ready to accept write address when
      // there is a valid write address and write data
      // on the write address and data bus. This design 
      // expects no outstanding transactions.
      S_AXI_AWREADY <= 1;
    else
      S_AXI_AWREADY <= 0;
  end
end

// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
// de-asserted when reset is active.
always @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN)
begin
  if (~S_AXI_ARESETN)
    S_AXI_WREADY <= 0;
  else begin
    if (S_AXI_AWVALID && S_AXI_WVALID && (~S_AXI_WREADY))
      // slave is ready to accept write data when 
      // there is a valid write address and write data
      // on the write address and data bus. This design 
      // expects no outstanding transactions.
      S_AXI_WREADY <= 1;
    else
      S_AXI_WREADY <= 0;
  end 
end 

// The write response and response valid signals are asserted by the slave 
// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
// This marks the acceptance of address and indicates the status of 
// write transaction.
always @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN)
begin
  if (~S_AXI_ARESETN)
    S_AXI_BVALID <= 0;
  else begin
    if (S_AXI_AWREADY && S_AXI_AWVALID && S_AXI_WREADY && S_AXI_WVALID && (~S_AXI_BVALID)) 
      S_AXI_BVALID <= 1;
    else if (S_AXI_BREADY && S_AXI_BVALID) 
      S_AXI_BVALID <= 0;
  end 
end 

// buffer for read_en enable signal
// read_en is created from axi_ready but used to trigger internal fifo read
// axi_arready is asserted after read is set
always @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN)
begin
  if (~S_AXI_ARESETN)
    read_en <= 0; 
  else begin
    if (S_AXI_ARVALID && (~S_AXI_ARREADY) && (~read_en)) 
      read_en <= 1;
    else
      read_en <= 0;
  end 
end

// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
// data are available on the axi_rdata bus at this instance. The 
// assertion of axi_rvalid marks the validity of read data on the 
// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
// is deasserted on reset axi_rresp and axi_rdata are 
// cleared to zero on reset 
always @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN)
begin
  if (~S_AXI_ARESETN)
    S_AXI_RVALID <= 0;
  else begin
    if (S_AXI_ARREADY && S_AXI_ARVALID && (~S_AXI_RVALID)) 
      // indicates that the slave has acceped the valid read address
      S_AXI_RVALID <= 1;
    else if (S_AXI_RREADY && S_AXI_RVALID) 
      S_AXI_RVALID <= 0;
  end 
end 

// axi_arready is asserted for one S_AXI_ACLK clock cycle when
// S_AXI_ARVALID is asserted. axi_awready is 
// de-asserted when reset is active. 
always @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN)
begin
  if (~S_AXI_ARESETN)
    S_AXI_ARREADY <= 0;
  else begin
    if (~S_AXI_ARREADY)
      S_AXI_ARREADY <= read_en;
    else
      S_AXI_ARREADY <= 0;
  end 
end 

// read address buffer
always @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN)
begin
  if (~S_AXI_ARESETN)
    axi_araddr <= 0;
  else begin
    if (S_AXI_ARVALID && (~S_AXI_ARREADY)) 
      axi_araddr <= S_AXI_ARADDR;
  end 
end 

// write address buffer
always @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN)
begin
  if (~S_AXI_ARESETN)
    axi_awaddr <= 0;
  else begin
    if (S_AXI_AWVALID && S_AXI_WVALID && (~S_AXI_AWREADY))
      axi_awaddr <= S_AXI_AWADDR;
  end
end 

// write enable signal
assign write_en = (S_AXI_WREADY && S_AXI_WVALID && S_AXI_AWREADY && S_AXI_AWVALID);

//---------------------------------------------------------------------------
// Registers and control signals
//---------------------------------------------------------------------------

// control output assignment
assign tx_start = ctrl_reg[0];
assign rx_start = ctrl_reg[1];
assign slave_addr = ctrl_reg[8:2];
assign tx_nb_bytes = ctrl_reg[12:9];
assign rx_nb_bytes = ctrl_reg[16:13];
assign tx_byte0   = tx_byte_reg[0];
assign tx_byte1   = tx_byte_reg[1];
assign tx_byte2   = tx_byte_reg[2];
assign tx_byte3   = tx_byte_reg[3];
assign tx_byte4   = tx_byte_reg[4];
assign tx_byte5   = tx_byte_reg[5];
assign tx_byte6   = tx_byte_reg[6];
assign tx_byte7   = tx_byte_reg[7];
assign tx_byte8   = tx_byte_reg[8];
assign tx_byte9   = tx_byte_reg[9];
assign tx_byte10  = tx_byte_reg[10];
assign tx_byte11  = tx_byte_reg[11];
assign tx_byte12  = tx_byte_reg[12];
assign tx_byte13  = tx_byte_reg[13];
assign tx_byte14  = tx_byte_reg[14];
assign tx_byte15  = tx_byte_reg[15];

// local write address
assign loc_waddr = axi_awaddr[9:2]; // local address ignoring bytes
// write register
integer i;
always @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN)
begin
  if (~S_AXI_ARESETN) begin
    for (i = 0; i < 16; i = i+1) begin
      tx_byte_reg[i] <= 0;
    end
    ctrl_reg <= 0;
  end
  else begin
    if (write_en) begin
      case (loc_waddr)
        8'h00: ctrl_reg <= {S_AXI_WDATA[19:5],S_AXI_WDATA[1:0]};
        8'h02: tx_byte_reg[0] <= S_AXI_WDATA[7:0];
        8'h03: tx_byte_reg[1] <= S_AXI_WDATA[7:0];
        8'h04: tx_byte_reg[2] <= S_AXI_WDATA[7:0];
        8'h05: tx_byte_reg[3] <= S_AXI_WDATA[7:0];
        8'h06: tx_byte_reg[4] <= S_AXI_WDATA[7:0];
        8'h07: tx_byte_reg[5] <= S_AXI_WDATA[7:0];
        8'h08: tx_byte_reg[6] <= S_AXI_WDATA[7:0];
        8'h09: tx_byte_reg[7] <= S_AXI_WDATA[7:0];
        8'h0A: tx_byte_reg[8] <= S_AXI_WDATA[7:0];
        8'h0B: tx_byte_reg[9] <= S_AXI_WDATA[7:0];
        8'h0C: tx_byte_reg[10] <= S_AXI_WDATA[7:0];
        8'h0D: tx_byte_reg[11] <= S_AXI_WDATA[7:0];
        8'h0E: tx_byte_reg[12] <= S_AXI_WDATA[7:0];
        8'h0F: tx_byte_reg[13] <= S_AXI_WDATA[7:0];
        8'h10: tx_byte_reg[14] <= S_AXI_WDATA[7:0];
        8'h11: tx_byte_reg[15] <= S_AXI_WDATA[7:0];
      endcase
    end
    // self-reseting bits
    if (ctrl_reg[0]) // tx start
      ctrl_reg[0] <= 0;
    if (ctrl_reg[1]) // rx start
      ctrl_reg[1] <= 0;
  end
end

// local read address
assign loc_raddr = axi_araddr[9:2]; // local address ignoring bytes
// select read data
always @(*)
begin
  case (loc_raddr)
    8'h00: data_out = {12'h0,ctrl_reg[16:2],3'h0,ctrl_reg[1:0]};
    8'h01: data_out = {20'h0,rx_bytes_sent,tx_bytes_sent,3'h0,done};
    8'h02: data_out = {24'h0,tx_byte_reg[0]};
    8'h03: data_out = {24'h0,tx_byte_reg[1]};
    8'h04: data_out = {24'h0,tx_byte_reg[2]};
    8'h05: data_out = {24'h0,tx_byte_reg[3]};
    8'h06: data_out = {24'h0,tx_byte_reg[4]};
    8'h07: data_out = {24'h0,tx_byte_reg[5]};
    8'h08: data_out = {24'h0,tx_byte_reg[6]};
    8'h09: data_out = {24'h0,tx_byte_reg[7]};
    8'h0A: data_out = {24'h0,tx_byte_reg[8]};
    8'h0B: data_out = {24'h0,tx_byte_reg[9]};
    8'h0C: data_out = {24'h0,tx_byte_reg[10]};
    8'h0D: data_out = {24'h0,tx_byte_reg[11]};
    8'h0E: data_out = {24'h0,tx_byte_reg[12]};
    8'h0F: data_out = {24'h0,tx_byte_reg[13]};
    8'h10: data_out = {24'h0,tx_byte_reg[14]};
    8'h11: data_out = {24'h0,tx_byte_reg[15]};
    8'h12: data_out = {19'h0,rx_byte0};
    8'h13: data_out = {19'h0,rx_byte1};
    8'h14: data_out = {19'h0,rx_byte2};
    8'h15: data_out = {19'h0,rx_byte3};
    8'h16: data_out = {19'h0,rx_byte4};
    8'h17: data_out = {19'h0,rx_byte5};
    8'h18: data_out = {19'h0,rx_byte6};
    8'h19: data_out = {19'h0,rx_byte7};
    8'h1A: data_out = {19'h0,rx_byte8};
    8'h1B: data_out = {19'h0,rx_byte9};
    8'h1C: data_out = {19'h0,rx_byte10};
    8'h1D: data_out = {19'h0,rx_byte11};
    8'h1E: data_out = {19'h0,rx_byte12};
    8'h1F: data_out = {19'h0,rx_byte13};
    8'h20: data_out = {19'h0,rx_byte14};
    8'h21: data_out = {19'h0,rx_byte15};
    default: data_out = 0;
  endcase
end
// output data buffer
always @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN)
begin
  if (~S_AXI_ARESETN)
    S_AXI_RDATA <= 0;
  else begin
    if (read_en)
      S_AXI_RDATA <= data_out;
  end
end


endmodule
