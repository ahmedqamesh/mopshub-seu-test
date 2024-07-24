//
// Verilog Module I2C_HC_TestMaster_lib.clock_domain_crossing
//
// Created:
//          by - lehmann.edagrp (chipdev2.physik.uni-wuppertal.de)
//          at - 09:37:55 06/22/16
//
// using Mentor Graphics HDL Designer(TM) 2015.1b (Build 4)
//

`resetall
`timescale 1ns/10ps
module clock_domain_crossing( 
   // Port Declarations
   input   wire            slow_clk, 
   input   wire            fast_clk, 
   input   wire            RSTn, 
   output  reg     [3:0]   rx_bytes_sent_f, 
   input   wire            rx_start_f, 
   input   wire    [6:0]   slave_addr_f, 
   output  reg     [3:0]   tx_bytes_sent_f, 
   input   wire            tx_start_f, 
   output  reg             done_f, 
   input   wire    [7:0]   tx_byte0_f, 
   input   wire    [7:0]   tx_byte1_f, 
   input   wire    [7:0]   tx_byte2_f, 
   input   wire    [7:0]   tx_byte3_f, 
   input   wire    [7:0]   tx_byte4_f, 
   input   wire    [7:0]   tx_byte5_f, 
   input   wire    [7:0]   tx_byte6_f, 
   input   wire    [7:0]   tx_byte7_f, 
   input   wire    [7:0]   tx_byte8_f, 
   input   wire    [7:0]   tx_byte9_f, 
   input   wire    [7:0]   tx_byte10_f, 
   input   wire    [7:0]   tx_byte11_f, 
   input   wire    [7:0]   tx_byte12_f, 
   input   wire    [7:0]   tx_byte13_f, 
   input   wire    [7:0]   tx_byte14_f, 
   input   wire    [7:0]   tx_byte15_f, 
   output  reg     [12:0]  rx_byte0_f, 
   output  reg     [12:0]  rx_byte1_f, 
   output  reg     [12:0]  rx_byte2_f, 
   output  reg     [12:0]  rx_byte3_f, 
   output  reg     [12:0]  rx_byte4_f, 
   output  reg     [12:0]  rx_byte5_f, 
   output  reg     [12:0]  rx_byte6_f, 
   output  reg     [12:0]  rx_byte7_f, 
   output  reg     [12:0]  rx_byte8_f, 
   output  reg     [12:0]  rx_byte9_f, 
   output  reg     [12:0]  rx_byte10_f, 
   output  reg     [12:0]  rx_byte11_f, 
   output  reg     [12:0]  rx_byte12_f, 
   output  reg     [12:0]  rx_byte13_f, 
   output  reg     [12:0]  rx_byte14_f, 
   output  reg     [12:0]  rx_byte15_f, 
   input   wire    [3:0]   rx_bytes_sent_s, 
   output  reg             rx_start_s, 
   output  reg     [6:0]   slave_addr_s, 
   input   wire    [3:0]   tx_bytes_sent_s, 
   output  reg             tx_start_s, 
   input   wire            done_s, 
   output  reg     [7:0]   tx_byte_s, 
   input   wire    [12:0]  rx_byte_s, 
   input   wire    [3:0]   tx_nb_bytes_f, 
   output  reg     [3:0]   tx_nb_bytes_s, 
   input   wire    [3:0]   rx_nb_bytes_f, 
   output  reg     [3:0]   rx_nb_bytes_s
);

// ### Please start your Verilog code here ###

// slow to fast ------------------------------
// Internal Declarations
reg    [3:0]   rx_bytes_sent_fb; 
reg    [3:0]   tx_bytes_sent_fb; 
reg            done_fb; 
reg    [12:0]  rx_byte0_fb; 
reg    [12:0]  rx_byte1_fb; 
reg    [12:0]  rx_byte2_fb; 
reg    [12:0]  rx_byte3_fb; 
reg    [12:0]  rx_byte4_fb; 
reg    [12:0]  rx_byte5_fb; 
reg    [12:0]  rx_byte6_fb; 
reg    [12:0]  rx_byte7_fb; 
reg    [12:0]  rx_byte8_fb; 
reg    [12:0]  rx_byte9_fb; 
reg    [12:0]  rx_byte10_fb; 
reg    [12:0]  rx_byte11_fb; 
reg    [12:0]  rx_byte12_fb; 
reg    [12:0]  rx_byte13_fb; 
reg    [12:0]  rx_byte14_fb; 
reg    [12:0]  rx_byte15_fb; 
reg    [3:0]   rx_bytes_sent_sb; 
reg    [3:0]   tx_bytes_sent_sb; 
reg            done_sb; 
reg    [12:0]  rx_byte0_sb; 
reg    [12:0]  rx_byte1_sb; 
reg    [12:0]  rx_byte2_sb; 
reg    [12:0]  rx_byte3_sb; 
reg    [12:0]  rx_byte4_sb; 
reg    [12:0]  rx_byte5_sb; 
reg    [12:0]  rx_byte6_sb; 
reg    [12:0]  rx_byte7_sb; 
reg    [12:0]  rx_byte8_sb; 
reg    [12:0]  rx_byte9_sb; 
reg    [12:0]  rx_byte10_sb; 
reg    [12:0]  rx_byte11_sb; 
reg    [12:0]  rx_byte12_sb; 
reg    [12:0]  rx_byte13_sb; 
reg    [12:0]  rx_byte14_sb; 
reg    [12:0]  rx_byte15_sb;

// buffer for slow signals
always @(posedge slow_clk or negedge RSTn)
begin
  if (~RSTn)
  begin
    rx_bytes_sent_sb <= 0; 
    tx_bytes_sent_sb <= 0; 
    done_sb <= 0; 
    rx_byte0_sb <= 0; 
    rx_byte1_sb <= 0; 
    rx_byte2_sb <= 0; 
    rx_byte3_sb <= 0; 
    rx_byte4_sb <= 0; 
    rx_byte5_sb <= 0; 
    rx_byte6_sb <= 0; 
    rx_byte7_sb <= 0; 
    rx_byte8_sb <= 0; 
    rx_byte9_sb <= 0; 
    rx_byte10_sb <= 0; 
    rx_byte11_sb <= 0; 
    rx_byte12_sb <= 0; 
    rx_byte13_sb <= 0; 
    rx_byte14_sb <= 0; 
    rx_byte15_sb <= 0;
  end
  else
  begin
    rx_bytes_sent_sb <= rx_bytes_sent_s; 
    tx_bytes_sent_sb <= tx_bytes_sent_s; 
    done_sb <= done_s; 
    case (rx_bytes_sent_s)
      4'd0: rx_byte0_sb <= rx_byte_s; 
      4'd1: rx_byte1_sb <= rx_byte_s; 
      4'd2: rx_byte2_sb <= rx_byte_s; 
      4'd3: rx_byte3_sb <= rx_byte_s; 
      4'd4: rx_byte4_sb <= rx_byte_s; 
      4'd5: rx_byte5_sb <= rx_byte_s; 
      4'd6: rx_byte6_sb <= rx_byte_s; 
      4'd7: rx_byte7_sb <= rx_byte_s; 
      4'd8: rx_byte8_sb <= rx_byte_s; 
      4'd9: rx_byte9_sb <= rx_byte_s; 
      4'd10: rx_byte10_sb <= rx_byte_s; 
      4'd11: rx_byte11_sb <= rx_byte_s; 
      4'd12: rx_byte12_sb <= rx_byte_s; 
      4'd13: rx_byte13_sb <= rx_byte_s; 
      4'd14: rx_byte14_sb <= rx_byte_s; 
      4'd15: rx_byte15_sb <= rx_byte_s;
    endcase
  end
end
// clock synch with fast clock
always @(posedge fast_clk or negedge RSTn)
begin
  if (~RSTn)
  begin
    rx_bytes_sent_fb <= 0; 
    tx_bytes_sent_fb <= 0; 
    done_fb <= 0; 
    rx_byte0_fb <= 0; 
    rx_byte1_fb <= 0; 
    rx_byte2_fb <= 0; 
    rx_byte3_fb <= 0; 
    rx_byte4_fb <= 0; 
    rx_byte5_fb <= 0; 
    rx_byte6_fb <= 0; 
    rx_byte7_fb <= 0; 
    rx_byte8_fb <= 0; 
    rx_byte9_fb <= 0; 
    rx_byte10_fb <= 0; 
    rx_byte11_fb <= 0; 
    rx_byte12_fb <= 0; 
    rx_byte13_fb <= 0; 
    rx_byte14_fb <= 0; 
    rx_byte15_fb <= 0;

    rx_bytes_sent_f <= 0; 
    tx_bytes_sent_f <= 0; 
    done_f <= 0; 
    rx_byte0_f <= 0; 
    rx_byte1_f <= 0; 
    rx_byte2_f <= 0; 
    rx_byte3_f <= 0; 
    rx_byte4_f <= 0; 
    rx_byte5_f <= 0; 
    rx_byte6_f <= 0; 
    rx_byte7_f <= 0; 
    rx_byte8_f <= 0; 
    rx_byte9_f <= 0; 
    rx_byte10_f <= 0; 
    rx_byte11_f <= 0; 
    rx_byte12_f <= 0; 
    rx_byte13_f <= 0; 
    rx_byte14_f <= 0; 
    rx_byte15_f <= 0;
  end
  else
  begin
    rx_bytes_sent_fb <= rx_bytes_sent_sb; 
    tx_bytes_sent_fb <= tx_bytes_sent_sb; 
    done_fb <= done_sb; 
    rx_byte0_fb <= rx_byte0_sb; 
    rx_byte1_fb <= rx_byte1_sb; 
    rx_byte2_fb <= rx_byte2_sb; 
    rx_byte3_fb <= rx_byte3_sb; 
    rx_byte4_fb <= rx_byte4_sb; 
    rx_byte5_fb <= rx_byte5_sb; 
    rx_byte6_fb <= rx_byte6_sb; 
    rx_byte7_fb <= rx_byte7_sb; 
    rx_byte8_fb <= rx_byte8_sb; 
    rx_byte9_fb <= rx_byte9_sb; 
    rx_byte10_fb <= rx_byte10_sb; 
    rx_byte11_fb <= rx_byte11_sb; 
    rx_byte12_fb <= rx_byte12_sb; 
    rx_byte13_fb <= rx_byte13_sb; 
    rx_byte14_fb <= rx_byte14_sb; 
    rx_byte15_fb <= rx_byte15_sb;

    rx_bytes_sent_f <= rx_bytes_sent_fb; 
    tx_bytes_sent_f <= tx_bytes_sent_fb; 
    done_f <= done_fb; 
    rx_byte0_f <= rx_byte0_fb; 
    rx_byte1_f <= rx_byte1_fb; 
    rx_byte2_f <= rx_byte2_fb; 
    rx_byte3_f <= rx_byte3_fb; 
    rx_byte4_f <= rx_byte4_fb; 
    rx_byte5_f <= rx_byte5_fb; 
    rx_byte6_f <= rx_byte6_fb; 
    rx_byte7_f <= rx_byte7_fb; 
    rx_byte8_f <= rx_byte8_fb; 
    rx_byte9_f <= rx_byte9_fb; 
    rx_byte10_f <= rx_byte10_fb; 
    rx_byte11_f <= rx_byte11_fb; 
    rx_byte12_f <= rx_byte12_fb; 
    rx_byte13_f <= rx_byte13_fb; 
    rx_byte14_f <= rx_byte14_fb; 
    rx_byte15_f <= rx_byte15_fb;
  end
end

// fast to slow ------------------------------
reg            tx_start_fb; 
reg            rx_start_fb; 
reg            tx_start_fcb; 
reg            rx_start_fcb; 
reg            tx_start_fc; 
reg            rx_start_fc; 
reg    [3:0]   tx_nb_bytes_fb; 
reg    [3:0]   rx_nb_bytes_fb; 
reg    [6:0]   slave_addr_fb; 
reg    [7:0]   tx_byte0_fb; 
reg    [7:0]   tx_byte1_fb; 
reg    [7:0]   tx_byte2_fb; 
reg    [7:0]   tx_byte3_fb; 
reg    [7:0]   tx_byte4_fb; 
reg    [7:0]   tx_byte5_fb; 
reg    [7:0]   tx_byte6_fb; 
reg    [7:0]   tx_byte7_fb; 
reg    [7:0]   tx_byte8_fb; 
reg    [7:0]   tx_byte9_fb; 
reg    [7:0]   tx_byte10_fb; 
reg    [7:0]   tx_byte11_fb; 
reg    [7:0]   tx_byte12_fb; 
reg    [7:0]   tx_byte13_fb; 
reg    [7:0]   tx_byte14_fb; 
reg    [7:0]   tx_byte15_fb; 
reg            tx_start_sb; 
reg            rx_start_sb; 
reg            tx_start_sb2; 
reg            rx_start_sb2; 
reg    [6:0]   slave_addr_sb; 
reg    [3:0]   tx_nb_bytes_sb; 
reg    [3:0]   rx_nb_bytes_sb;
reg    [7:0]   tx_byte0_sb; 
reg    [7:0]   tx_byte1_sb; 
reg    [7:0]   tx_byte2_sb; 
reg    [7:0]   tx_byte3_sb; 
reg    [7:0]   tx_byte4_sb; 
reg    [7:0]   tx_byte5_sb; 
reg    [7:0]   tx_byte6_sb; 
reg    [7:0]   tx_byte7_sb; 
reg    [7:0]   tx_byte8_sb; 
reg    [7:0]   tx_byte9_sb; 
reg    [7:0]   tx_byte10_sb; 
reg    [7:0]   tx_byte11_sb; 
reg    [7:0]   tx_byte12_sb; 
reg    [7:0]   tx_byte13_sb; 
reg    [7:0]   tx_byte14_sb; 
reg    [7:0]   tx_byte15_sb; 
reg    [7:0]   tx_byte0_s; 
reg    [7:0]   tx_byte1_s; 
reg    [7:0]   tx_byte2_s; 
reg    [7:0]   tx_byte3_s; 
reg    [7:0]   tx_byte4_s; 
reg    [7:0]   tx_byte5_s; 
reg    [7:0]   tx_byte6_s; 
reg    [7:0]   tx_byte7_s; 
reg    [7:0]   tx_byte8_s; 
reg    [7:0]   tx_byte9_s; 
reg    [7:0]   tx_byte10_s; 
reg    [7:0]   tx_byte11_s; 
reg    [7:0]   tx_byte12_s; 
reg    [7:0]   tx_byte13_s; 
reg    [7:0]   tx_byte14_s; 
reg    [7:0]   tx_byte15_s; 
// buffer for fast signals
always @(posedge fast_clk or negedge RSTn)
begin
  if (~RSTn)
  begin
    tx_nb_bytes_fb <= 0; 
    rx_nb_bytes_fb <= 0; 
    slave_addr_fb <= 0; 
    tx_byte0_fb <= 0; 
    tx_byte1_fb <= 0; 
    tx_byte2_fb <= 0; 
    tx_byte3_fb <= 0; 
    tx_byte4_fb <= 0; 
    tx_byte5_fb <= 0; 
    tx_byte6_fb <= 0; 
    tx_byte7_fb <= 0; 
    tx_byte8_fb <= 0; 
    tx_byte9_fb <= 0; 
    tx_byte10_fb <= 0; 
    tx_byte11_fb <= 0; 
    tx_byte12_fb <= 0; 
    tx_byte13_fb <= 0; 
    tx_byte14_fb <= 0; 
    tx_byte15_fb <= 0; 
  end
  else
  begin
    tx_nb_bytes_fb <= tx_nb_bytes_f; 
    rx_nb_bytes_fb <= rx_nb_bytes_f; 
    slave_addr_fb <= slave_addr_f; 
    tx_byte0_fb <= tx_byte0_f; 
    tx_byte1_fb <= tx_byte1_f; 
    tx_byte2_fb <= tx_byte2_f; 
    tx_byte3_fb <= tx_byte3_f; 
    tx_byte4_fb <= tx_byte4_f; 
    tx_byte5_fb <= tx_byte5_f; 
    tx_byte6_fb <= tx_byte6_f; 
    tx_byte7_fb <= tx_byte7_f; 
    tx_byte8_fb <= tx_byte8_f; 
    tx_byte9_fb <= tx_byte9_f; 
    tx_byte10_fb <= tx_byte10_f; 
    tx_byte11_fb <= tx_byte11_f; 
    tx_byte12_fb <= tx_byte12_f; 
    tx_byte13_fb <= tx_byte13_f; 
    tx_byte14_fb <= tx_byte14_f; 
    tx_byte15_fb <= tx_byte15_f; 
  end
end 
// clock synch with slow clock
always @(posedge slow_clk or negedge RSTn)
begin
  if (~RSTn)
  begin
    tx_nb_bytes_sb <= 0; 
    rx_nb_bytes_sb <= 0; 
    slave_addr_sb <= 0; 
    tx_byte0_sb <= 0; 
    tx_byte1_sb <= 0; 
    tx_byte2_sb <= 0; 
    tx_byte3_sb <= 0; 
    tx_byte4_sb <= 0; 
    tx_byte5_sb <= 0; 
    tx_byte6_sb <= 0; 
    tx_byte7_sb <= 0; 
    tx_byte8_sb <= 0; 
    tx_byte9_sb <= 0; 
    tx_byte10_sb <= 0; 
    tx_byte11_sb <= 0; 
    tx_byte12_sb <= 0; 
    tx_byte13_sb <= 0; 
    tx_byte14_sb <= 0; 
    tx_byte15_sb <= 0; 

    tx_nb_bytes_s <= 0; 
    rx_nb_bytes_s <= 0; 
    slave_addr_s <= 0; 
    tx_byte0_s <= 0; 
    tx_byte1_s <= 0; 
    tx_byte2_s <= 0; 
    tx_byte3_s <= 0; 
    tx_byte4_s <= 0; 
    tx_byte5_s <= 0; 
    tx_byte6_s <= 0; 
    tx_byte7_s <= 0; 
    tx_byte8_s <= 0; 
    tx_byte9_s <= 0; 
    tx_byte10_s <= 0; 
    tx_byte11_s <= 0; 
    tx_byte12_s <= 0; 
    tx_byte13_s <= 0; 
    tx_byte14_s <= 0; 
    tx_byte15_s <= 0; 
  end
  else
  begin
    tx_nb_bytes_sb <= tx_nb_bytes_fb; 
    rx_nb_bytes_sb <= rx_nb_bytes_fb; 
    slave_addr_sb <= slave_addr_fb; 
    tx_byte0_sb <= tx_byte0_fb; 
    tx_byte1_sb <= tx_byte1_fb; 
    tx_byte2_sb <= tx_byte2_fb; 
    tx_byte3_sb <= tx_byte3_fb; 
    tx_byte4_sb <= tx_byte4_fb; 
    tx_byte5_sb <= tx_byte5_fb; 
    tx_byte6_sb <= tx_byte6_fb; 
    tx_byte7_sb <= tx_byte7_fb; 
    tx_byte8_sb <= tx_byte8_fb; 
    tx_byte9_sb <= tx_byte9_fb; 
    tx_byte10_sb <= tx_byte10_fb; 
    tx_byte11_sb <= tx_byte11_fb; 
    tx_byte12_sb <= tx_byte12_fb; 
    tx_byte13_sb <= tx_byte13_fb; 
    tx_byte14_sb <= tx_byte14_fb; 
    tx_byte15_sb <= tx_byte15_fb; 

    tx_nb_bytes_s <= tx_nb_bytes_sb; 
    rx_nb_bytes_s <= rx_nb_bytes_sb; 
    slave_addr_s <= slave_addr_sb; 
    tx_byte0_s <= tx_byte0_sb; 
    tx_byte1_s <= tx_byte1_sb; 
    tx_byte2_s <= tx_byte2_sb; 
    tx_byte3_s <= tx_byte3_sb; 
    tx_byte4_s <= tx_byte4_sb; 
    tx_byte5_s <= tx_byte5_sb; 
    tx_byte6_s <= tx_byte6_sb; 
    tx_byte7_s <= tx_byte7_sb; 
    tx_byte8_s <= tx_byte8_sb; 
    tx_byte9_s <= tx_byte9_sb; 
    tx_byte10_s <= tx_byte10_sb; 
    tx_byte11_s <= tx_byte11_sb; 
    tx_byte12_s <= tx_byte12_sb; 
    tx_byte13_s <= tx_byte13_sb; 
    tx_byte14_s <= tx_byte14_sb; 
    tx_byte15_s <= tx_byte15_sb; 
  end
end
// start signals
always @(posedge fast_clk or negedge RSTn)
begin
  if (~RSTn)
  begin
    tx_start_fb <= 0;
    rx_start_fb <= 0;
    tx_start_fcb <= 0;
    rx_start_fcb <= 0;
    tx_start_fc <= 0;
    rx_start_fc <= 0;
  end
  else
  begin
    // tx start
    if (tx_start_fc) // clear flag
      tx_start_fb <= 0;
    else if (tx_start_f) // set flag
      tx_start_fb <= 1;
    // rx start
    if (rx_start_fc) // clear flag
      rx_start_fb <= 0;
    else if (rx_start_f) // set flag
      rx_start_fb <= 1;
    // feed back synchronisation
    tx_start_fcb <= tx_start_s;
    tx_start_fc <= tx_start_fcb;
    rx_start_fcb <= rx_start_s;
    rx_start_fc <= rx_start_fcb;
  end
end

always @(posedge slow_clk or negedge RSTn)
begin
  if (~RSTn)
  begin
    tx_start_s <= 0;
    tx_start_sb <= 0;
    tx_start_sb2 <= 0;
    rx_start_s <= 0;
    rx_start_sb <= 0;
    rx_start_sb2 <= 0;
  end
  else
  begin
    tx_start_s <= tx_start_sb2;
    tx_start_sb <= tx_start_fb;
    tx_start_sb2 <= tx_start_sb;
    rx_start_s <= rx_start_sb2;
    rx_start_sb <= rx_start_fb;
    rx_start_sb2 <= rx_start_sb;
  end
end


// outputmux for tx_byte
always @(*)
begin
  case (tx_bytes_sent_s)
    4'd0: tx_byte_s = tx_byte0_s;
    4'd1: tx_byte_s = tx_byte1_s;
    4'd2: tx_byte_s = tx_byte2_s;
    4'd3: tx_byte_s = tx_byte3_s;
    4'd4: tx_byte_s = tx_byte4_s;
    4'd5: tx_byte_s = tx_byte5_s;
    4'd6: tx_byte_s = tx_byte6_s;
    4'd7: tx_byte_s = tx_byte7_s;
    4'd8: tx_byte_s = tx_byte8_s;
    4'd9: tx_byte_s = tx_byte9_s;
    4'd10: tx_byte_s = tx_byte10_s;
    4'd11: tx_byte_s = tx_byte11_s;
    4'd12: tx_byte_s = tx_byte12_s;
    4'd13: tx_byte_s = tx_byte13_s;
    4'd14: tx_byte_s = tx_byte14_s;
    4'd15: tx_byte_s = tx_byte15_s;
  endcase
end

endmodule
