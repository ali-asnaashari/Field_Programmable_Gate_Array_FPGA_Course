`timescale 1ns / 1ps

module HalfAdder(inputOne,inputTwo,Sum,Carry);

	input  inputOne;
	input  inputTwo;
	output Sum;
	output Carry;
	
	// SolutionOne
	/*
	xor (Sum,inputOne,inputTwo);
	and (Carry,inputOne,inputTwo);
	*/
	
	// SolutionTwo
	assign Sum   = inputOne ^ inputTwo;
	assign Carry = inputOne & inputTwo;
	
endmodule
