`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2017 16:38:49
// Design Name: 
// Module Name: Inverter
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


module Inverter(
    // SCB signals
    input sclx2_int,
    output sclx2_ext,
    input sdam_int,
    output sdam_ext,
    output sdas_int,
    input sdas_ext,
    // gpio signals
    output [5:0] in_int,
    input [5:0] in_ext,
    input [4:0] out_int,
    output [4:0] out_ext
    );
    
    // invert SCB signals
    assign sclx2_ext = ~sclx2_int;
    assign sdam_ext = ~sdam_int;
    assign sdas_int = ~sdas_ext;
    
    // invert GPIO
    assign in_int = ~in_ext;
    assign out_ext = ~out_int;
    
endmodule
