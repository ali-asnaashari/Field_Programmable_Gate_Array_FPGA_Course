`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:56:48 11/13/2021 
// Design Name: 
// Module Name:    fullAdder_instantiation 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fullAdder_instantiation( input1, input2, carryin);
	 input [3:0] input1;
	 input [3:0] input2;
	 input carryin;
	 
	 wire [3:0] out;
	 wire carryout;
	 
	 parametric_fullAdder f1(
			.in1(input1),
			.in2(input2),
			.cin(carryin),
			.sum(out),
			.cout(carryout)
	 );


endmodule
