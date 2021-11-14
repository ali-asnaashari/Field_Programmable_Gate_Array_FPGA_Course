`timescale 1ns / 1ps



module JK_FlipFlop_TB;

	// Inputs
	reg J;
	reg K;
	reg clockPulse;

	// Outputs
	wire Q;
	wire Q_Inverter;

	// Instantiate the Unit Under Test (UUT)
	JK_FlipFlop uut (
		.J(J), 
		.K(K), 
		.clockPulse(clockPulse), 
		.Q(Q), 
		.Q_Inverter(Q_Inverter)
	);

	initial begin
		clockPulse = 0;
	end
	
	always # 50 clockPulse = ~clockPulse;  //T = 100 ns
	
	initial begin

		// output:No Change
		J = 0;
		K = 0;

		#100;
		
      // output:Reset
		J = 0;
		K = 1;

		#100;

      // output:Set
		J = 1;
		K = 0;

		#100;
		
		// Toggle
		J = 1;
		K = 1;
	end
      
endmodule

