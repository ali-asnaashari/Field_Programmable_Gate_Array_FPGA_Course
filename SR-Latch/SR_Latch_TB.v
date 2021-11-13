`timescale 1ns / 1ps


module SR_Latch_TB;

	// Inputs
	reg S;
	reg R;
	reg E;

	// Outputs
	wire Q;
	wire Q_Inverter;

	// Instantiate the Unit Under Test (UUT)
	SR_Latch uut (
		.S(S), 
		.R(R), 
		.E(E), 
		.Q(Q), 
		.Q_Inverter(Q_Inverter)
	);

	initial begin
	
		E = 0;
		S = 1;
		R = 1;

		#100;

		E = 1;
		S = 0;
		R = 1;

		#100;
		
		E = 1;
		S = 1;
		R = 0;

		#100;
		
		E = 1;
		S = 1;
		R = 1;


	end
      
endmodule

