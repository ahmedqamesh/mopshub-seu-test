//
// Verilog Module I2C_HC_Slave_lib.hc_generator
//
// Created:
//          by - lehmann.edagrp (chipdev2.physik.uni-wuppertal.de)
//          at - 17:32:12 07/12/16
//
// using Mentor Graphics HDL Designer(TM) 2015.1b (Build 4)
//

//`resetall
`timescale 1ns/10ps
module hc_generator( 
   input   wire    [7:0]   data, 
   output  wire    [11:0]  hc_data
);

// tmrg default triplicate

reg [11:0] hc_dataIn;
wire [11:0] hc_dataInVoted = hc_dataIn;
assign hc_data = hc_dataInVoted;

// always @(*) not allowed in tmrg scripts
always @(data)
begin
  case (data)
    8'h00: hc_dataIn = {data,4'h0};
    8'h01: hc_dataIn = {data,4'h3};
    8'h02: hc_dataIn = {data,4'h6};
    8'h03: hc_dataIn = {data,4'h5};
    8'h04: hc_dataIn = {data,4'hc};
    8'h05: hc_dataIn = {data,4'hf};
    8'h06: hc_dataIn = {data,4'ha};
    8'h07: hc_dataIn = {data,4'h9};
    8'h08: hc_dataIn = {data,4'hb};
    8'h09: hc_dataIn = {data,4'h8};
    8'h0A: hc_dataIn = {data,4'hd};
    8'h0B: hc_dataIn = {data,4'he};
    8'h0C: hc_dataIn = {data,4'h7};
    8'h0D: hc_dataIn = {data,4'h4};
    8'h0E: hc_dataIn = {data,4'h1};
    8'h0F: hc_dataIn = {data,4'h2};

    8'h10: hc_dataIn = {data,4'h5};
    8'h11: hc_dataIn = {data,4'h6};
    8'h12: hc_dataIn = {data,4'h3};
    8'h13: hc_dataIn = {data,4'h0};
    8'h14: hc_dataIn = {data,4'h9};
    8'h15: hc_dataIn = {data,4'ha};
    8'h16: hc_dataIn = {data,4'hf};
    8'h17: hc_dataIn = {data,4'hc};
    8'h18: hc_dataIn = {data,4'he};
    8'h19: hc_dataIn = {data,4'hd};
    8'h1A: hc_dataIn = {data,4'h8};
    8'h1B: hc_dataIn = {data,4'hb};
    8'h1C: hc_dataIn = {data,4'h2};
    8'h1D: hc_dataIn = {data,4'h1};
    8'h1E: hc_dataIn = {data,4'h4};
    8'h1F: hc_dataIn = {data,4'h7};

    8'h20: hc_dataIn = {data,4'ha};
    8'h21: hc_dataIn = {data,4'h9};
    8'h22: hc_dataIn = {data,4'hc};
    8'h23: hc_dataIn = {data,4'hf};
    8'h24: hc_dataIn = {data,4'h6};
    8'h25: hc_dataIn = {data,4'h5};
    8'h26: hc_dataIn = {data,4'h0};
    8'h27: hc_dataIn = {data,4'h3};
    8'h28: hc_dataIn = {data,4'h1};
    8'h29: hc_dataIn = {data,4'h2};
    8'h2A: hc_dataIn = {data,4'h7};
    8'h2B: hc_dataIn = {data,4'h4};
    8'h2C: hc_dataIn = {data,4'hd};
    8'h2D: hc_dataIn = {data,4'he};
    8'h2E: hc_dataIn = {data,4'hb};
    8'h2F: hc_dataIn = {data,4'h8};

    8'h30: hc_dataIn = {data,4'hf};
    8'h31: hc_dataIn = {data,4'hc};
    8'h32: hc_dataIn = {data,4'h9};
    8'h33: hc_dataIn = {data,4'ha};
    8'h34: hc_dataIn = {data,4'h3};
    8'h35: hc_dataIn = {data,4'h0};
    8'h36: hc_dataIn = {data,4'h5};
    8'h37: hc_dataIn = {data,4'h6};
    8'h38: hc_dataIn = {data,4'h4};
    8'h39: hc_dataIn = {data,4'h7};
    8'h3A: hc_dataIn = {data,4'h2};
    8'h3B: hc_dataIn = {data,4'h1};
    8'h3C: hc_dataIn = {data,4'h8};
    8'h3D: hc_dataIn = {data,4'hb};
    8'h3E: hc_dataIn = {data,4'he};
    8'h3F: hc_dataIn = {data,4'hd};

    8'h40: hc_dataIn = {data,4'h7};
    8'h41: hc_dataIn = {data,4'h4};
    8'h42: hc_dataIn = {data,4'h1};
    8'h43: hc_dataIn = {data,4'h2};
    8'h44: hc_dataIn = {data,4'hb};
    8'h45: hc_dataIn = {data,4'h8};
    8'h46: hc_dataIn = {data,4'hd};
    8'h47: hc_dataIn = {data,4'he};
    8'h48: hc_dataIn = {data,4'hc};
    8'h49: hc_dataIn = {data,4'hf};
    8'h4A: hc_dataIn = {data,4'ha};
    8'h4B: hc_dataIn = {data,4'h9};
    8'h4C: hc_dataIn = {data,4'h0};
    8'h4D: hc_dataIn = {data,4'h3};
    8'h4E: hc_dataIn = {data,4'h6};
    8'h4F: hc_dataIn = {data,4'h5};

    8'h50: hc_dataIn = {data,4'h2};
    8'h51: hc_dataIn = {data,4'h1};
    8'h52: hc_dataIn = {data,4'h4};
    8'h53: hc_dataIn = {data,4'h7};
    8'h54: hc_dataIn = {data,4'he};
    8'h55: hc_dataIn = {data,4'hd};
    8'h56: hc_dataIn = {data,4'h8};
    8'h57: hc_dataIn = {data,4'hb};
    8'h58: hc_dataIn = {data,4'h9};
    8'h59: hc_dataIn = {data,4'ha};
    8'h5A: hc_dataIn = {data,4'hf};
    8'h5B: hc_dataIn = {data,4'hc};
    8'h5C: hc_dataIn = {data,4'h5};
    8'h5D: hc_dataIn = {data,4'h6};
    8'h5E: hc_dataIn = {data,4'h3};
    8'h5F: hc_dataIn = {data,4'h0};

    8'h60: hc_dataIn = {data,4'hd};
    8'h61: hc_dataIn = {data,4'he};
    8'h62: hc_dataIn = {data,4'hb};
    8'h63: hc_dataIn = {data,4'h8};
    8'h64: hc_dataIn = {data,4'h1};
    8'h65: hc_dataIn = {data,4'h2};
    8'h66: hc_dataIn = {data,4'h7};
    8'h67: hc_dataIn = {data,4'h4};
    8'h68: hc_dataIn = {data,4'h6};
    8'h69: hc_dataIn = {data,4'h5};
    8'h6A: hc_dataIn = {data,4'h0};
    8'h6B: hc_dataIn = {data,4'h3};
    8'h6C: hc_dataIn = {data,4'ha};
    8'h6D: hc_dataIn = {data,4'h9};
    8'h6E: hc_dataIn = {data,4'hc};
    8'h6F: hc_dataIn = {data,4'hf};

    8'h70: hc_dataIn = {data,4'h8};
    8'h71: hc_dataIn = {data,4'hb};
    8'h72: hc_dataIn = {data,4'he};
    8'h73: hc_dataIn = {data,4'hd};
    8'h74: hc_dataIn = {data,4'h4};
    8'h75: hc_dataIn = {data,4'h7};
    8'h76: hc_dataIn = {data,4'h2};
    8'h77: hc_dataIn = {data,4'h1};
    8'h78: hc_dataIn = {data,4'h3};
    8'h79: hc_dataIn = {data,4'h0};
    8'h7A: hc_dataIn = {data,4'h5};
    8'h7B: hc_dataIn = {data,4'h6};
    8'h7C: hc_dataIn = {data,4'hf};
    8'h7D: hc_dataIn = {data,4'hc};
    8'h7E: hc_dataIn = {data,4'h9};
    8'h7F: hc_dataIn = {data,4'ha};

    8'h80: hc_dataIn = {data,4'he};
    8'h81: hc_dataIn = {data,4'hd};
    8'h82: hc_dataIn = {data,4'h8};
    8'h83: hc_dataIn = {data,4'hb};
    8'h84: hc_dataIn = {data,4'h2};
    8'h85: hc_dataIn = {data,4'h1};
    8'h86: hc_dataIn = {data,4'h4};
    8'h87: hc_dataIn = {data,4'h7};
    8'h88: hc_dataIn = {data,4'h5};
    8'h89: hc_dataIn = {data,4'h6};
    8'h8A: hc_dataIn = {data,4'h3};
    8'h8B: hc_dataIn = {data,4'h0};
    8'h8C: hc_dataIn = {data,4'h9};
    8'h8D: hc_dataIn = {data,4'ha};
    8'h8E: hc_dataIn = {data,4'hf};
    8'h8F: hc_dataIn = {data,4'hc};

    8'h90: hc_dataIn = {data,4'hb};
    8'h91: hc_dataIn = {data,4'h8};
    8'h92: hc_dataIn = {data,4'hd};
    8'h93: hc_dataIn = {data,4'he};
    8'h94: hc_dataIn = {data,4'h7};
    8'h95: hc_dataIn = {data,4'h4};
    8'h96: hc_dataIn = {data,4'h1};
    8'h97: hc_dataIn = {data,4'h2};
    8'h98: hc_dataIn = {data,4'h0};
    8'h99: hc_dataIn = {data,4'h3};
    8'h9A: hc_dataIn = {data,4'h6};
    8'h9B: hc_dataIn = {data,4'h5};
    8'h9C: hc_dataIn = {data,4'hc};
    8'h9D: hc_dataIn = {data,4'hf};
    8'h9E: hc_dataIn = {data,4'ha};
    8'h9F: hc_dataIn = {data,4'h9};

    8'hA0: hc_dataIn = {data,4'h4};
    8'hA1: hc_dataIn = {data,4'h7};
    8'hA2: hc_dataIn = {data,4'h2};
    8'hA3: hc_dataIn = {data,4'h1};
    8'hA4: hc_dataIn = {data,4'h8};
    8'hA5: hc_dataIn = {data,4'hb};
    8'hA6: hc_dataIn = {data,4'he};
    8'hA7: hc_dataIn = {data,4'hd};
    8'hA8: hc_dataIn = {data,4'hf};
    8'hA9: hc_dataIn = {data,4'hc};
    8'hAA: hc_dataIn = {data,4'h9};
    8'hAB: hc_dataIn = {data,4'ha};
    8'hAC: hc_dataIn = {data,4'h3};
    8'hAD: hc_dataIn = {data,4'h0};
    8'hAE: hc_dataIn = {data,4'h5};
    8'hAF: hc_dataIn = {data,4'h6};

    8'hB0: hc_dataIn = {data,4'h1};
    8'hB1: hc_dataIn = {data,4'h2};
    8'hB2: hc_dataIn = {data,4'h7};
    8'hB3: hc_dataIn = {data,4'h4};
    8'hB4: hc_dataIn = {data,4'hd};
    8'hB5: hc_dataIn = {data,4'he};
    8'hB6: hc_dataIn = {data,4'hb};
    8'hB7: hc_dataIn = {data,4'h8};
    8'hB8: hc_dataIn = {data,4'ha};
    8'hB9: hc_dataIn = {data,4'h9};
    8'hBA: hc_dataIn = {data,4'hc};
    8'hBB: hc_dataIn = {data,4'hf};
    8'hBC: hc_dataIn = {data,4'h6};
    8'hBD: hc_dataIn = {data,4'h5};
    8'hBE: hc_dataIn = {data,4'h0};
    8'hBF: hc_dataIn = {data,4'h3};

    8'hC0: hc_dataIn = {data,4'h9};
    8'hC1: hc_dataIn = {data,4'ha};
    8'hC2: hc_dataIn = {data,4'hf};
    8'hC3: hc_dataIn = {data,4'hc};
    8'hC4: hc_dataIn = {data,4'h5};
    8'hC5: hc_dataIn = {data,4'h6};
    8'hC6: hc_dataIn = {data,4'h3};
    8'hC7: hc_dataIn = {data,4'h0};
    8'hC8: hc_dataIn = {data,4'h2};
    8'hC9: hc_dataIn = {data,4'h1};
    8'hCA: hc_dataIn = {data,4'h4};
    8'hCB: hc_dataIn = {data,4'h7};
    8'hCC: hc_dataIn = {data,4'he};
    8'hCD: hc_dataIn = {data,4'hd};
    8'hCE: hc_dataIn = {data,4'h8};
    8'hCF: hc_dataIn = {data,4'hb};

    8'hD0: hc_dataIn = {data,4'hc};
    8'hD1: hc_dataIn = {data,4'hf};
    8'hD2: hc_dataIn = {data,4'ha};
    8'hD3: hc_dataIn = {data,4'h9};
    8'hD4: hc_dataIn = {data,4'h0};
    8'hD5: hc_dataIn = {data,4'h3};
    8'hD6: hc_dataIn = {data,4'h6};
    8'hD7: hc_dataIn = {data,4'h5};
    8'hD8: hc_dataIn = {data,4'h7};
    8'hD9: hc_dataIn = {data,4'h4};
    8'hDA: hc_dataIn = {data,4'h1};
    8'hDB: hc_dataIn = {data,4'h2};
    8'hDC: hc_dataIn = {data,4'hb};
    8'hDD: hc_dataIn = {data,4'h8};
    8'hDE: hc_dataIn = {data,4'hd};
    8'hDF: hc_dataIn = {data,4'he};

    8'hE0: hc_dataIn = {data,4'h3};
    8'hE1: hc_dataIn = {data,4'h0};
    8'hE2: hc_dataIn = {data,4'h5};
    8'hE3: hc_dataIn = {data,4'h6};
    8'hE4: hc_dataIn = {data,4'hf};
    8'hE5: hc_dataIn = {data,4'hc};
    8'hE6: hc_dataIn = {data,4'h9};
    8'hE7: hc_dataIn = {data,4'ha};
    8'hE8: hc_dataIn = {data,4'h8};
    8'hE9: hc_dataIn = {data,4'hb};
    8'hEA: hc_dataIn = {data,4'he};
    8'hEB: hc_dataIn = {data,4'hd};
    8'hEC: hc_dataIn = {data,4'h4};
    8'hED: hc_dataIn = {data,4'h7};
    8'hEE: hc_dataIn = {data,4'h2};
    8'hEF: hc_dataIn = {data,4'h1};

    8'hF0: hc_dataIn = {data,4'h6};
    8'hF1: hc_dataIn = {data,4'h5};
    8'hF2: hc_dataIn = {data,4'h0};
    8'hF3: hc_dataIn = {data,4'h3};
    8'hF4: hc_dataIn = {data,4'ha};
    8'hF5: hc_dataIn = {data,4'h9};
    8'hF6: hc_dataIn = {data,4'hc};
    8'hF7: hc_dataIn = {data,4'hf};
    8'hF8: hc_dataIn = {data,4'hd};
    8'hF9: hc_dataIn = {data,4'he};
    8'hFA: hc_dataIn = {data,4'hb};
    8'hFB: hc_dataIn = {data,4'h8};
    8'hFC: hc_dataIn = {data,4'h1};
    8'hFD: hc_dataIn = {data,4'h2};
    8'hFE: hc_dataIn = {data,4'h7};
    8'hFF: hc_dataIn = {data,4'h4};
  endcase
end

// Internal Declarations
endmodule
