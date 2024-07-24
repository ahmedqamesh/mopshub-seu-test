`resetall
`timescale 1ns/10ps
module bit_counter( 
   clk, 
   load_counter,   // reset counter value
   counter_ready,  // all bits sent
   RSTn, 
   clk_en
);


// Internal Declarations

input   clk;
input   load_counter;
output  counter_ready;
input   RSTn;
input   clk_en;


wire clk;
wire load_counter;
wire counter_ready;
wire RSTn;
wire clk_en;

// ### Please start your Verilog code here ### 

reg [3:0] counter;		//Register für Zählstand

assign counter_ready = (!(|counter));	 //Setzt Eins auf Ausgang wenn Registerinhalt Null ist

always @ (posedge clk or negedge RSTn)
begin
  if (~RSTn) // asynchronous reset
    counter <= 4'hB;
  else 
  begin
    if (clk_en)
    begin
      if (load_counter) // load counter value
        counter <= 4'hB;   
      else 
        counter <= counter - 1;  // count down
    end
  end
end

endmodule
