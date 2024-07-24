`resetall
`timescale 1ns/10ps
module byte_counter( 
   cnt, 
   clear, 
   clk, 
   RSTn, 
   limit, 
   number, 
   atlimit
);


// Internal Declarations

input        cnt;
input        clear;
input        clk;
input        RSTn;
input  [3:0] limit;
output [3:0] number;
output       atlimit;


wire cnt;
wire clear;
wire clk;
wire RSTn;
wire [3:0] limit;
reg  [3:0] number;
reg  atlimit;

// ### Please start your Verilog code here ### 
wire [3:0] nb_p1;

//assign atlimit = (nb_p1 == limit);

// calculate next counter value
assign nb_p1 = number+1;

// changed to load hc value - nl 06.06.16
always @ (posedge clk or negedge RSTn)
begin
  if (~RSTn) // asynchronous reset
  begin
    number <= 4'h0;
    atlimit <= 0;
  end
  else 
  begin 
    // counter
    if (clear) // clear counter value
      number <= 4'h0;   
    else if (cnt) // count
      number <= nb_p1;
    // synchronous set of atlimit signal
    if ((nb_p1 == limit) || (limit == 4'h0))
      atlimit <= 1;
    else
      atlimit <= 0;
  end
end

endmodule
