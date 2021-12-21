`timescale 1ns / 1ps


module Pipeline_Multiplier_TB;

	// Inputs
	reg clockPulse;
	reg [7:0] inputOne;
	reg [7:0] inputTwo;
	
	wire [15:0] result;

	// Instantiate the Unit Under Test (UUT)
	Pipeline_Multiplier uut (
		.clockPulse(clockPulse), 
		.inputOne(inputOne), 
		.inputTwo(inputTwo),
		.result(result)
	);
	
	initial 
		begin
			clockPulse = 0;
		end
	
	always # 50 clockPulse = ~clockPulse;  //T = 100 ns


	initial begin

		inputOne = 7'b0000111;
		inputTwo = 7'b0000110;
		
		#100;
		
		inputOne = 7'b0000100;
		inputTwo = 7'b0000101;
		
		#100;

	end
      
endmodule

