module shift_in (
  input   wire          clk,
  input   wire          rst_n,
  input   wire          pulse,
  input   wire          mode,
  output  wire [7:0]  data_out,
  input   wire          data_in
);

// internal shift register
reg [7:0] data_reg;

assign data_out = data_reg;

always @(posedge clk or negedge rst_n)
begin
  if (~rst_n)
    data_reg = 0;
  else
    if (mode && pulse) // shift data in if mode is active
      begin
        data_reg <= {data_reg[6:0],data_in};
      end
end

endmodule
