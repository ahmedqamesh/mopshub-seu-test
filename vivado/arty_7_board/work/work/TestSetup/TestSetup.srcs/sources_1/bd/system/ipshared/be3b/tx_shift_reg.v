`resetall
`timescale 1ns/10ps
module tx_shift_reg( 
   clk,         // 2xSCL
   data,        // 12 data input
   out,         // serial output manchester encoded
   load_data,   // load 12 bit data to send
   RSTn,        // asynchronous active low reset
   load_start,  // load pattern for start signal
   load_stop,   // load pattern for stop signal
   load_ack,    // load pattern for ACK
   load_nack    // load pattern for NACK
);


// Internal Declarations

input         clk;
input  [11:0] data;
output        out;
input         load_data;
input         RSTn;
input         load_start;
input         load_stop;
input         load_ack;
input         load_nack;


wire clk;
wire [11:0] data;
wire out;
wire load_data;
wire RSTn;
wire load_start;
wire load_stop;
wire load_ack;
wire load_nack;

// ### Please start your Verilog code here ### 

reg [24:0] shift_reg;	  // internal shift register for the data
                        // the shift register has 25 bits to directly encode
                        // the manchester pattern of the whole 8+4 data&hc
                        // bits
                        // The last bit is used to fill the shift register
                        // with the correct pattern for a '1' 
integer i;

assign out = shift_reg[24]; 

// for manchester encoding with xnor
always @(posedge clk or negedge RSTn)
begin
  if (~RSTn) // reset
  begin
    shift_reg <= 25'h0AAAAAA;  // reset to a '1' manchester pattern
  end
  else 
  begin
    if (load_data)
    begin
      for (i=0; i<12; i=i+1)
      begin
        shift_reg[2*i+2] <= ~data[i];   // inverted the two signals
        shift_reg[2*i+1] <= data[i];    // 
      end
      shift_reg[0] <= 0;
    end
    else if (load_start)
      shift_reg <= 25'h02AAAAA;
    else if (load_stop)
      shift_reg <= 25'h1AAAAAA;
    else if (load_ack)
      shift_reg <= 25'h12AAAAA;
    else if (load_nack)
      shift_reg <= 25'h0AAAAAA;
    else
      shift_reg <= {shift_reg[23:0],~shift_reg[0]}; // shift data and fill with pattern for a '1'
  end
end

endmodule
