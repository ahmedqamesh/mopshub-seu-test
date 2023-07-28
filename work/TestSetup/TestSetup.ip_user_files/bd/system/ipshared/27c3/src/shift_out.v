module shift_out (
  input   wire          clk,
  input   wire          rst_n,
  input   wire          pulse,
  input   wire          mode,
  input   wire          load,
  input   wire [31:0]  data_in,
  output  wire          data_out
);

reg [31:0] data;

assign data_out = data[31];


always @(posedge clk or negedge rst_n)
  begin
    if (~rst_n)
      data <= 0;
    else
      if (load)
        data <= data_in;
      else if (pulse && mode)
        begin
          data <= {data[30:0], data[31]};
        end
end

endmodule
