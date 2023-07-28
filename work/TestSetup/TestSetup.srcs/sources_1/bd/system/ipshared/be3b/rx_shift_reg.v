`resetall
`timescale 1ns/10ps
module rx_shift_reg( 
   clk,            // clock
   ser_in,         // serial shift input
   data,           // received parallel data including hc and valid bit
   shift_en,       // enable data shift register
   RSTn,           // asynchronous active low reset
   clear_syndrom,  // reset syndrom register
   valid,          // valid syndrom received
   clk_en          // clock enable
);


// Internal Declarations

input         clk;
input         ser_in;
output [12:0] data;
input         shift_en;
input         RSTn;
input         clear_syndrom;
output        valid;
input         clk_en;


wire clk;
wire ser_in;
wire [12:0] data;
wire shift_en;
wire RSTn;
wire clear_syndrom;
wire valid;
wire clk_en;

// ### Please start your Verilog code here ### 

reg [11:0]  shift_reg;
reg [3:0]   syndrom;    // syndrom for hamming code check

// assign output data
assign data = {valid,shift_reg};

// shift register and syndrom calculation
always @ (posedge clk or negedge RSTn)
begin
  if (~RSTn) 
  begin
     shift_reg <= 8'h00;
     syndrom <= 4'h0;
  end
  else 
  begin
    // clock enable on risign edge 
    if (~clk_en)
    begin
      if (shift_en) 
        shift_reg <= {shift_reg[10:0], ser_in}; // shift data in
      // syndrom calculation
      if (clear_syndrom)
        syndrom <= 4'h0;
      else
        syndrom <= {syndrom[0]^ser_in, (syndrom[3]^syndrom[0])^ser_in, syndrom[2], syndrom[1]^ser_in};
    end
  end
end

// valid hc syndrom signal
assign valid = (~(|syndrom));
  
endmodule
