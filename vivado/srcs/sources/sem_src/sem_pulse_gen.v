`timescale 1ns / 1ps

module sem_puls_gen(
 input wire clk_icap,
 input rst, 
 input wire status_injection_internal,
 output wire pulse_out_txwrite
    );

  // pulse generator
    reg prev_signal_reg; //register to keep track of the previous state of the status_injection_internal signal.
    reg pulse_out_reg;
    reg pulse_trigger_reg;
    reg   [7:0]  cycles_cnt;
    reg   [7:0] request_cycle_cnt;
    reg count_started_reg;
    
initial cycles_cnt = 8'd128;
initial request_cycle_cnt = 8'b000; 
initial prev_signal_reg = 1'b0; //register used to keep track of the previous state of the input signal.
initial pulse_out_reg = 1'b0;  
initial pulse_trigger_reg = 1'b0;  
	//This block is responsible for detecting transitions in the status_injection_internal signal and generating the pulse_trigger_reg signal accordingly.
	// It also keeps track of the previous state of the input signal using prev_signal_reg, so that pulse_trigger_reg will pulse only one clock cycle 
  always @(posedge clk_icap) 
    begin
        if (!rst) 
            begin 
                pulse_trigger_reg <= 1'b0;
                prev_signal_reg <= 1'b0;
            end
        else
            begin
                if (status_injection_internal && !prev_signal_reg)      pulse_trigger_reg <= 1'b0;
                else if (!status_injection_internal && prev_signal_reg) pulse_trigger_reg <= 1'b1;      
                else pulse_trigger_reg <= 1'b0;
                prev_signal_reg <= status_injection_internal;
             end
    end
    
    
 // Counter over the Clock signal using pulse_trigger_reg
 always @(posedge clk_icap)
    begin
        if (!rst) 
            begin 
                request_cycle_cnt <= 8'b0;
                count_started_reg <= 1'b0;
            end
        else
            begin
                if (pulse_trigger_reg == 1'b1 && !count_started_reg)  
                    begin 
                        request_cycle_cnt <= 8'b0;
                        count_started_reg <= 1'b1;
                    end    
                else if (request_cycle_cnt < cycles_cnt && count_started_reg) 
                    begin 
                        request_cycle_cnt <= request_cycle_cnt + 1'b1;   
                    end
                else if (request_cycle_cnt == cycles_cnt)   
                    begin 
                        count_started_reg <= 1'b0; 
                        request_cycle_cnt <= 8'b0;
                    end
             end
    end
  assign pulse_out_txwrite = (request_cycle_cnt == cycles_cnt) ? 1:0;   
  			
endmodule
