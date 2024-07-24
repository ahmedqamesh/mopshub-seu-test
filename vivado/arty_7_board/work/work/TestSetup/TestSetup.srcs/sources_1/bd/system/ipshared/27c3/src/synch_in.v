module synch_in (
  input   wire          clk,
  input   wire          rst_n,
  input   wire          din,
  output  reg           dout
);

always @(posedge clk or negedge rst_n)
begin
  if (~rst_n)
    dout <= 0;
  else
  begin
    dout <= din;
  end
end

endmodule
