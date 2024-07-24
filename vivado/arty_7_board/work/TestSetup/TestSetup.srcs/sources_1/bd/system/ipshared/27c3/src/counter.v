module counter (
  input   wire        clk,
  input   wire        rst_n,
  input   wire        pulse,
  input   wire        clear,
  output  wire [2:0]  cnt
);
  reg [2:0]           counter;

  always @(posedge clk or negedge rst_n)
  begin 
    if (~rst_n)
      counter <= 1;
    else
      begin
        if (clear)
          counter <= 1; // reset to 1 as shift starts during clear counter process
        else if (pulse)
          counter <= counter +1;
      end
  end
  
  assign cnt = counter;

endmodule
