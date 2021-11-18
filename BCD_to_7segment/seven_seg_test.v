`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:09:06 11/13/2021
// Design Name:   seven_seg
// Module Name:   C:/Users/lenovo/Desktop/FPGA/hw2/HW2/seven_seg_test.v
// Project Name:  HW2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seven_seg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module seven_seg_test;

	// Inputs
	reg [6:0] dec;

	// Outputs
	wire [6:0] seg1;
	wire [6:0] seg0;

	// Instantiate the Unit Under Test (UUT)
	seven_seg uut (
		.dec(dec), 
		.seg1(seg1), 
		.seg0(seg0)
	);

	initial begin
		// Initialize Inputs
		dec = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

