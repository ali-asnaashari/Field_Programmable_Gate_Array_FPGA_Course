`timescale 1ns / 1ps

module JK_FlipFlop_Five_Bit_UpCounter_TB;

	// Inputs
	reg clockPulse;

	// Outputs
	wire [4:0] Result;

	// Instantiate the Unit Under Test (UUT)
	JK_FlipFlop_Five_Bit_UpCounter uut (
		.clockPulse(clockPulse), 
		.Result(Result)
	);
	
	initial 
		begin
			clockPulse = 0;
		end
	
	always #50 clockPulse = ~clockPulse; //T = 100;

	initial begin

	end
      
endmodule

