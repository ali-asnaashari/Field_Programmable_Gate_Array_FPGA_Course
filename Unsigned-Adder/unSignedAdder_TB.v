`timescale 1ns / 1ps


module unSignedAdder_TB;

	// Inputs
	reg [7:0] inputOne;
	reg [7:0] inputTwo;

	// Outputs
	wire [7:0] Sum;

	// Instantiate the Unit Under Test (UUT)
	unSignedAdder uut (
		.inputOne(inputOne), 
		.inputTwo(inputTwo), 
		.Sum(Sum)
	);

	initial begin
	   // output: 00001100
		inputOne = 8'b0000_0010;  // 2
		inputTwo = 8'b0000_1010; // 10

		#500;
		// output: 00011110
		inputOne = 8'b0000_1111;  // 15
		inputTwo = 8'b0000_1111; // 15
		
		

	end
      
endmodule

