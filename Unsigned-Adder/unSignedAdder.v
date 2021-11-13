`timescale 1ns / 1ps

module unSignedAdder(inputOne,inputTwo,Sum);

	// Unsigned Adder Without Carry

	input  [7:0] inputOne;
	input  [7:0] inputTwo;
	output [7:0] Sum;
	
	assign Sum = inputOne + inputTwo;


endmodule
