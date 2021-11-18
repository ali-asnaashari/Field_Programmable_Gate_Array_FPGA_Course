`timescale 1ns / 1ps

module AlwaysBlock_5Bit_UpCounter_TB;

	// Inputs
	reg clockPulse;

	// Outputs
	wire [4:0] Result;

	// Instantiate the Unit Under Test (UUT)
	AlwaysBlock uut (
		.clockPulse(clockPulse), 
		.Result(Result)
	);
	
	initial 
		begin
			clockPulse = 0;
		end
	
	always # 50 clockPulse = ~clockPulse; // T=100 ns

	initial begin


	end
      
endmodule

