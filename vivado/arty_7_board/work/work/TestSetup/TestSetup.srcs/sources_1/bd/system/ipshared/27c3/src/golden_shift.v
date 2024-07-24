module golden_shift (
  input   wire          clk,
  input   wire          rst_n,
  input   wire          pulse,
  input   wire          mode,
  input   wire          din,
  output  wire          dout
);

// ### Please start your Verilog code here ### 
parameter LENGTH = 3000;

reg [LENGTH-1:0] shiftreg;

always @(posedge clk or negedge rst_n)
begin
  if (~rst_n)
  begin
    shiftreg <= 0;
  end
  else if (mode && pulse) // shift register mode
  begin
    shiftreg <= {shiftreg[LENGTH-2:0],din};
  end
end

assign dout = shiftreg[LENGTH-1];

endmodule
