`timescale 1ns / 1ps


module Mul_Accumulate_Register_TB;

	// Inputs
	reg [7:0] numberOne;
	reg [7:0] numberTwo;
	reg clockPulse;
	reg Reset;

	// Outputs
	wire [15:0] Result;

	// Instantiate the Unit Under Test (UUT)
	Mul_Accumulate_Register uut (
		.numberOne(numberOne), 
		.numberTwo(numberTwo), 
		.clockPulse(clockPulse), 
		.Reset(Reset), 
		.Result(Result)
	);
	
	initial begin
		clockPulse = 0;
	end
	
	always # 50 clockPulse = ~clockPulse;  //T = 100 ns

	initial begin
		// Initialize Inputs
		numberOne = 6;
		numberTwo = 7;
		Reset = 1;
		
		#100;
		
		numberOne = 2;
		numberTwo = 3;
		Reset = 0;
		
		#100;
		
		
		numberOne = 5;
		numberTwo = 9;
		Reset = 0;
		
		#100;
		
		numberOne = 5;
		numberTwo = 0;
		Reset = 0;
		
		#100;


	end
      
endmodule

