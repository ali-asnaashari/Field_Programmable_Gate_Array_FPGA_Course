`timescale 1ns / 1ps

module JK_FlipFlop_4Bit_UpCounter_TB;

	// Inputs
	reg clockPulse;

	// Outputs
	wire [3:0] Result;

	// Instantiate the Unit Under Test (UUT)
	JK_FlipFlop_UpCounter uut (
		.clockPulse(clockPulse), 
		.Result(Result)
	);
	initial begin
		clockPulse = 0;
	end
	
	always # 50 clockPulse = ~clockPulse;  //T = 100 ns
	
	initial begin
		#100;
        

	end
      
endmodule

