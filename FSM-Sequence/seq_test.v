`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:18:08 11/14/2021
// Design Name:   sequence_practice
// Module Name:   C:/Users/lenovo/Desktop/FPGA/midterm_exam/seq_test.v
// Project Name:  midterm_exam
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sequence_practice
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module seq_test;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [2:0] outp;

	// Instantiate the Unit Under Test (UUT)
	sequence_practice uut (
		.clk(clk), 
		.reset(reset), 
		.outp(outp)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		
		forever #(10) clk = ~clk;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here

	end
      
endmodule

