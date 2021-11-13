`timescale 1ns / 1ps


module D_Latch_TB;

	// Inputs
	reg D;
	reg E;

	// Outputs
	wire Q;
	wire Q_Inverter;

	// Instantiate the Unit Under Test (UUT)
	D_Latch uut (
		.D(D), 
		.E(E), 
		.Q(Q), 
		.Q_Inverter(Q_Inverter)
	);

	initial begin
		// output => Q = Latch, Q_Inverter = Latch
		D = 0;
		E = 0;
		
		#100;
		
		// output => Q = Latch, Q_Inverter = Latch
		D = 1;
		E = 0;
		
		#100;
		
		// output => Q = 0, Q_Inverter = 1
		D = 0;
		E = 1;

		#100;
		
		// output => Q = 1, Q_Inverter = 0
		D = 1;
		E = 1;

		#100;

	end
      
endmodule

