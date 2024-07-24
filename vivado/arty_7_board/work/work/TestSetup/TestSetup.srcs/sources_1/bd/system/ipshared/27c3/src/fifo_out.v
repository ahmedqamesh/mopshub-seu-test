module fifo_out (
  input   wire          clk,
  input   wire          rst_n,
  input   wire [31:0]   data_out_axi,
  input   wire          write,
  output  reg  [31:0]  data_out,
  input  wire          load,
  output reg full
);


always @(posedge clk or negedge rst_n)
begin
  if(!rst_n)
  begin
    data_out = 0;
    full     = 0;
  end
  else
  begin
    if(write & !full) // Schreibe an entsprechende Stelle im internen Speicher
    begin
      data_out = data_out_axi;
      full = 1;
    end
    else if (load) //Setze die "state machine" zurueck
    begin
      full = 0;
    end
  end
end

endmodule

