`timescale 1ns / 1ps

module T_FlipFlop_TB;

	// Inputs
	reg T;
	reg clockPulse;

	// Outputs
	wire Q;
	wire Q_Inverter;

	// Instantiate the Unit Under Test (UUT)
	T_FlipFlop uut (
		.T(T), 
		.clockPulse(clockPulse), 
		.Q(Q), 
		.Q_Inverter(Q_Inverter)
	);
	
	initial begin
		clockPulse = 0;
	end
	
	always # 50 clockPulse = ~clockPulse;  //T = 100 ns

	initial begin
		T = 0;
		#100;
		
		T = 1;
		#100;


	end
      
endmodule

