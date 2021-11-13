`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:01:20 11/13/2021
// Design Name:   fullAdder_instantiation
// Module Name:   C:/Users/lenovo/Desktop/FPGA/Midterm_practice/mid_practice/test_fullAdder.v
// Project Name:  mid_practice
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fullAdder_instantiation
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_fullAdder;

	// Inputs
	reg [3:0] input1;
	reg [3:0] input2;
	reg carryin;

	// Instantiate the Unit Under Test (UUT)
	fullAdder_instantiation uut (
		.input1(input1), 
		.input2(input2), 
		.carryin(carryin)
	);

	initial begin
		// Initialize Inputs
		input1 = 0;
		input2 = 5;
		carryin = 0;

		// Wait 100 ns for global reset to finish
		forever #(10) input1 = input1 + 1'b1;
        
		// Add stimulus here

	end
      
endmodule

