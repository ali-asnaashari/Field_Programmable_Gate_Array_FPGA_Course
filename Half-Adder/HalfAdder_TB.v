`timescale 1ns / 1ps


module HalfAdder_TB;
	
	// Inputs
	reg inputOne;
	reg inputTwo;
	
	// Outputs
	wire Sum;
	wire Carry;

	// Instantiate the Unit Under Test (UUT)
	HalfAdder uut (
		.inputOne(inputOne),
		.inputTwo(inputTwo),
		.Sum(Sum),
		.Carry(Carry)
	);

	initial begin
	// Sum = 0; Carry = 0;
	inputOne = 1'b0;
	inputTwo = 1'b0;
	
	#250;
	// Sum = 1; Carry = 0;
	inputOne = 1'b0;
	inputTwo = 1'b1;
	
	#250;
	// Sum = 1; Carry = 0;
	inputOne = 1'b1;
	inputTwo = 1'b0;
	
	#250;
	// Sum = 0; Carry = 1;
	inputOne = 1'b1;
	inputTwo = 1'b1;
	

	end
      
endmodule

