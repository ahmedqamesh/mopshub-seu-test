module bytecounter (
  input   wire        clk,
  input   wire        rst_n,
  input   wire        pulse,
  input   wire        clear,
  output  wire [8:0]  cnt
);
  reg [8:0]           counter;

  always @(posedge clk or negedge rst_n)
  begin 
    if (~rst_n)
      counter <= 1;
    else
      begin
        if (clear)
          counter <= 0;
        else if (pulse)
          counter <= counter +1;
      end
  end
  
  assign cnt = counter;

endmodule
