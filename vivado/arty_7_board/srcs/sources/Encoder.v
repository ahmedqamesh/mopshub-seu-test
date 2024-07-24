`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2017 10:33:50
// Design Name: 
// Module Name: Encoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Encoder(
    input [7:0]ss_axi_i,
    output [2:0]ss_enc_out
    );
    wire [7:0]ss_axi_i;
    reg [2:0]ss_enc_out;
    always @ (ss_axi_i)
        begin
            case(ss_axi_i)
                8'b1111_1111 : ss_enc_out=3'b000;
                8'b1111_1110 : ss_enc_out=3'b001;
                8'b1111_1101 : ss_enc_out=3'b010;
                8'b1111_1011 : ss_enc_out=3'b011;
                8'b1111_0111 : ss_enc_out=3'b100;
                8'b1110_1111 : ss_enc_out=3'b101;
                8'b1101_1111 : ss_enc_out=3'b110;
                8'b1011_1111 : ss_enc_out=3'b111;
                default      : ss_enc_out=3'b111;
            endcase
        end         
endmodule