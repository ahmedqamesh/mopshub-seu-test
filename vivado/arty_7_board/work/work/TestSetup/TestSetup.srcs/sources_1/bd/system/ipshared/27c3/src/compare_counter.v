module compare_counter (
  input   wire          clk,
  input   wire          rst_n,
  input   wire          clear,
  input   wire          pulse,
  input   wire          mode,
  input   wire          golden_in,
  input   wire          dut_in,
  output  reg   [15:0]  cnt_ones,
  output  reg   [15:0]  cnt_zeros,
  output  reg   [15:0]  cnt_high,
  output  reg   [15:0]  cnt_low
);

wire [1:0] compare;

assign compare = {golden_in, dut_in};

always @(posedge clk or negedge rst_n)
begin
  if (~rst_n)
  begin
    cnt_ones <= 0;
    cnt_zeros <= 0;
    cnt_high <= 0;
    cnt_low <= 0;
  end
  else
  begin
    if (clear)
    begin
      cnt_ones <= 0;
      cnt_zeros <= 0;
      cnt_high <= 0;
      cnt_low <= 0;
    end
    else if (pulse && mode)
    begin
      case (compare)
        2'b00 : cnt_zeros <= cnt_zeros + 1;
        2'b01 : cnt_high <= cnt_high + 1;
        2'b10 : cnt_low <= cnt_low + 1;
        2'b11 : cnt_ones <= cnt_ones + 1;
      endcase
    end
  end
end

endmodule
