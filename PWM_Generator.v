// FPGA Bot : Task 1 D : PWM Generator
/*
Instructions
-------------------
Students are not allowed to make any changes in the Module declaration.
This file is used to design a module which will scale down the 50Mhz Clock Frequency to 1Mhz and perform Pulse Width Modulation on it.

Recommended Quartus Version : 19.1
The submitted project file must be 19.1 compatible as the evaluation will be done on Quartus Prime Lite 19.1.

Warning: The error due to compatibility will not be entertained.
-------------------
*/

//PWM Generator
//Inputs : Clk, DUTY_CYCLE
//Output : PWM_OUT

//////////////////DO NOT MAKE ANY CHANGES IN MODULE//////////////////

module PWM_Generator(
 
	input clk,             // Clock input
	input [7:0]DUTY_CYCLE, // Input Duty Cycle
	output PWM_OUT         // Output PWM
);
 
////////////////////////WRITE YOUR CODE FROM HERE////////////////////


reg clk_1M; //1MHz clock signal


reg [7:0] counter_out = 0 ;
//initial begin
//counter_out <= 8'b0;
//end
reg val = 0;
always @ (posedge clk)
begin
 
if (counter_out < 49 & val == 1) begin
counter_out <= counter_out + 1;

end
else begin counter_out <= 0; end
val <= 1;
end
assign PWM_OUT = (counter_out < DUTY_CYCLE/2 ) ? 1:0;
////////////////////////YOUR CODE ENDS HERE//////////////////////////
endmodule
///////////////////////////////MODULE ENDS///////////////////////////
