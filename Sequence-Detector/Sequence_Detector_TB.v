`timescale 1ns / 1ps

module Sequence_Detector_TB;

	// Inputs
	reg clockPulse;
	reg reset;

	// Outputs
	wire [1:0] result;

	// Instantiate the Unit Under Test (UUT)
	Sequence_Detector uut (
		.clockPulse(clockPulse), 
		.reset(reset), 
		.result(result)
	);
	
	initial 
		begin
			clockPulse = 0;
		end
	
	always # 50 clockPulse = ~clockPulse;  //T = 100 ns

	initial begin

		reset = 0;

		#200;
		
		reset = 1;
		
		#300;
		
		reset = 0;
		


	end
      
endmodule

