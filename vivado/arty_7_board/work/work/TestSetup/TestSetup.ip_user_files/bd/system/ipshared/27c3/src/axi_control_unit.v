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
   output  wire    [31:0]  dividor, 
	 output  wire            shift_clk_en,
   output  reg             write, 
   output  wire    [31:0]  data_out, 
   output  wire            run, 
   input   wire            idle, 
   input   wire            write_fifo_full, 
   input   wire            simple_fifo_full, 
   input   wire            simple_fifo_almost_full, 
   input   wire            simple_fifo_empty, 
   output  reg             simple_read, 
   input   wire    [63:0]  simple_data, 
   input   wire            tmr_fifo_full, 
   input   wire            tmr_fifo_almost_full, 
   input   wire            tmr_fifo_empty, 
   output  reg             tmr_read, 
   input   wire    [63:0]  tmr_data, 
   input   wire    [15:0]  simple_ones, 
   input   wire    [15:0]  simple_zeros, 
   input   wire    [15:0]  simple_high, 
   input   wire    [15:0]  simple_low, 
   input   wire    [15:0]  tmr_ones, 
   input   wire    [15:0]  tmr_zeros, 
   input   wire    [15:0]  tmr_high, 
   input   wire    [15:0]  tmr_low, 
   output  wire            clear_seucounter,
   output  wire            clear_fifo_simple,
   output  wire            clear_fifo_tmr
);

// ### Please start your Verilog code here ###
// Internal Declarations
reg [9:0]   axi_araddr;
reg [9:0]   axi_awaddr;
reg         read_en;
wire        write_en;
wire [7:0]  loc_raddr;
wire [7:0]  loc_waddr;
reg [31:0]  axi_data_out;



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

// internal register
reg [4:0] control_reg;
reg [31:0] dividor_reg;
reg [31:0] data_out_reg;

wire [31:0] simple_data_int;
wire [31:0] tmr_data_int;
reg simple_mux;
reg tmr_mux;
reg clear_fifo_simple_d;
reg clear_fifo_tmr_d;


// output assignment
assign run = control_reg[0];
assign clear_fifo_simple = control_reg[1];
assign clear_fifo_tmr = control_reg[2];
assign clear_seucounter = control_reg[3];
assign shift_clk_en = control_reg[4];
assign dividor = dividor_reg;
assign data_out = data_out_reg;

// local write address
assign loc_waddr = axi_awaddr[9:2]; // local address ignoring bytes
// write register
integer i;
always @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN)
begin
  if (~S_AXI_ARESETN) begin
    control_reg <= 5'h10; // enable clock per default
    dividor_reg <= 0;
    data_out_reg <= 0;
  end
  else begin
    if (write_en) 
    begin
      case (loc_waddr)
        8'h00: control_reg <= {S_AXI_WDATA[4:0]}; // write register
        8'h01: control_reg <= control_reg | S_AXI_WDATA[4:0]; // set bits
        8'h02: control_reg <= control_reg & ~S_AXI_WDATA[4:0]; // clear bits
        8'h03: dividor_reg <= S_AXI_WDATA;
        8'h04: data_out_reg <= S_AXI_WDATA;
      endcase
    end
    else
      control_reg[3] <= 0;
      if (clear_fifo_tmr_d)
        control_reg[2] <= 0;
      if (clear_fifo_simple_d)
        control_reg[1] <= 0;
  end
end

always @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN)
begin
  if (~S_AXI_ARESETN)
  begin
    clear_fifo_simple_d <= 0;
    clear_fifo_tmr_d <= 0;
  end
  else
  begin
    clear_fifo_simple_d <= control_reg[1];
    clear_fifo_tmr_d <= control_reg[2];
  end
end

// fifo control signals on write
always @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN)
begin
  if (~S_AXI_ARESETN)
    write = 0;
  else 
  begin
    if (write_en) 
    begin
      case (loc_waddr)
        8'h04: write <= 1;
      endcase
    end
    else // reset flags after read access
      write = 0;
  end
end
// fifo control signals on read
always @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN)
begin
  if (~S_AXI_ARESETN)
  begin
    simple_read <= 0;
    simple_mux <= 0;
    tmr_read <= 0;
    tmr_mux <= 0;
  end
  else 
  begin
    if (clear_fifo_simple)
      simple_mux <= 0;
    if (clear_fifo_tmr)
      tmr_mux <= 0;
    if (read_en) 
    begin
      case (loc_raddr)
        8'h05: 
          begin
            simple_mux <= ~simple_mux;
            if (simple_mux) simple_read <= 1;
          end
        8'h06: 
          begin
            tmr_mux <= ~tmr_mux;
            if (tmr_mux) tmr_read <= 1;
          end
      endcase
    end
    else // reset flags after read access
    begin
      simple_read = 0;
      tmr_read = 0;
    end
  end
end


assign simple_data_int = simple_mux ? simple_data[31:0] : simple_data[63:32];
assign tmr_data_int = tmr_mux ? tmr_data[31:0] : tmr_data[63:32];

// local read address
assign loc_raddr = axi_araddr[9:2]; // local address ignoring bytes
// select read data
always @(*)
begin
  case (loc_raddr)
    8'h00: axi_data_out = {idle,write_fifo_full,simple_fifo_full,simple_fifo_almost_full,simple_fifo_empty,tmr_fifo_full,tmr_fifo_almost_full,tmr_fifo_empty,19'h0,control_reg};
    8'h01: axi_data_out = {idle,write_fifo_full,simple_fifo_full,simple_fifo_almost_full,simple_fifo_empty,tmr_fifo_full,tmr_fifo_almost_full,tmr_fifo_empty,19'h0,control_reg};
    8'h02: axi_data_out = {idle,write_fifo_full,simple_fifo_full,simple_fifo_almost_full,simple_fifo_empty,tmr_fifo_full,tmr_fifo_almost_full,tmr_fifo_empty,19'h0,control_reg};
    8'h03: axi_data_out = dividor_reg;
    8'h04: axi_data_out = data_out_reg;
    8'h05: axi_data_out = simple_data_int;
    8'h06: axi_data_out = tmr_data_int;
    8'h07: axi_data_out = {16'h0,simple_ones};
    8'h08: axi_data_out = {16'h0,simple_zeros};
    8'h09: axi_data_out = {16'h0,simple_high};
    8'h0A: axi_data_out = {16'h0,simple_low};
    8'h0B: axi_data_out = {16'h0,tmr_ones};
    8'h0C: axi_data_out = {16'h0,tmr_zeros};
    8'h0D: axi_data_out = {16'h0,tmr_high};
    8'h0E: axi_data_out = {16'h0,tmr_low};
    default: axi_data_out = 0;
  endcase
end
// output data buffer
always @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN)
begin
  if (~S_AXI_ARESETN)
    S_AXI_RDATA <= 0;
  else begin
    if (read_en)
      S_AXI_RDATA <= axi_data_out;
  end
end


endmodule
