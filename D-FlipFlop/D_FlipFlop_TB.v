`timescale 1ns / 1ps


module D_FlipFlop_TB;

	// Inputs
	reg D;
	reg clockPulse;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	D_FlipFlop uut (
		.D(D), 
		.Q(Q), 
		.clockPulse(clockPulse)
	);

	initial begin
		clockPulse = 0;
		D = 1'b1;
		
		#100;
		
		clockPulse = 1;
		


	end
      
endmodule

