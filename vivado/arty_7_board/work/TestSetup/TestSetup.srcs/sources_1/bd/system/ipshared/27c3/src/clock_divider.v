//

`resetall
`timescale 1ns/10ps
module clock_divider (
  input   wire        clk,
  input   wire        rst_n,
  input   wire [31:0] dividor,
  input   wire        shift_clk_en,
  output  wire        shift_clk,
  output  wire        shift_pulse,
  output  wire        shift_pulse_n,
  output  wire        pre_pulse
);

wire [33:0] dividor_int;
reg [33:0] counter;

initial counter = 1;


reg shift;
reg pulse;
reg ppulse;
reg pulse_n;

initial shift = 1;

assign shift_clk=shift;
assign shift_pulse=pulse;
assign shift_pulse_n=pulse_n;
assign pre_pulse=ppulse;
assign dividor_int = dividor+5;

always @ (posedge clk or negedge rst_n)
  if (~rst_n)
  begin 
    counter <= 1;
    shift <= 0; 
    pulse <= 0;
    ppulse <= 0;
  end
  else if (shift_clk_en)
  begin
    counter <= counter + 1;
    if(counter >= dividor_int)
      begin 
        shift <= ~shift;
        counter <= 1;
      end
    // generate pulse on negative shift clock edge
    if ((counter == (dividor_int-1)) && (shift == 1))
      pulse <= 1;
    else //if (counter == 2)
      pulse <= 0;
    if ((counter == (dividor_int-1)) && (shift == 0))
      pulse_n <= 1;
    else //if (counter == 2)
      pulse_n <= 0;
    // generate pulse one cycle before edge
    if ((counter == (dividor_int-2)) && (shift == 1))
      ppulse <= 1;
    else
      ppulse <= 0;
  end

endmodule
