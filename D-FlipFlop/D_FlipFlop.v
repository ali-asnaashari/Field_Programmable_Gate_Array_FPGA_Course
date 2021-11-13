`timescale 1ns / 1ps

module D_FlipFlop(D,Q,clockPulse);

	input D;
	input clockPulse;
	
	// output reg Q;
	output Q;
	reg Q;
	
	
	always @(posedge clockPulse)
		Q = D;


endmodule
