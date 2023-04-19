`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2017 10:05:49
// Design Name: 
// Module Name: JA_Multiplexer_Oszilloskop
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


module JA_Multiplexer_Oszilloskop(
    input rst,
    input spi_sclk,
    input [2:0]spi_ss,
    input spi_dout,
    input spi_din,
    input [3:0] gpio_output,
    input [3:0] gpio_input,
    input scb_scl_inv,
    input scb_sclx2_inv,
    input scb_sdas_inv,
    input scb_sdam_inv,
    input scb_sdas_decoded,
    output reg [7:0] ja_pmod
    );
    
    reg [7:0]multiplexer;
    wire [1:0]operation_mode=gpio_output[3:2];
    
    
    always @ (*)
        begin
            case (operation_mode)
                2'b01 : begin
                            multiplexer[0]=spi_sclk;
                            multiplexer[1]=spi_ss[0];
                            multiplexer[2]=spi_ss[1];
                            multiplexer[3]=spi_ss[2];                         
                            multiplexer[4]=spi_din;
                            multiplexer[5]=spi_dout;
                            multiplexer[7:6]=0;
                        end
                2'b10 : begin
                            multiplexer[1:0]=gpio_output[1:0];
                            multiplexer[5:2]=gpio_input[3:0];
                            multiplexer[7:6]=0;
                        end
                2'b11 : begin
                            multiplexer[0]=scb_scl_inv;
                            multiplexer[1]=scb_sclx2_inv;
                            multiplexer[2]=scb_sdas_inv;
                            multiplexer[3]=scb_sdam_inv;
                            multiplexer[4]=scb_sdas_decoded;
                            multiplexer[7:5]=0;
                        end              
                                    
                default: begin
                            multiplexer=0;
                         end
            endcase
        end
   
    always @ (*)
        begin
            if (rst==1)
                ja_pmod=0;
            else
                ja_pmod=multiplexer;
        end
endmodule