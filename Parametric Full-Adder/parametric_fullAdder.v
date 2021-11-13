`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:47:01 11/13/2021 
// Design Name: 
// Module Name:    parametric_fullAdder 
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
module parametric_fullAdder(in1, in2, cin, sum, cout);

	parameter N = 4;
	input wire [N-1:0] in1, in2;
	input wire cin; 
	output wire [N-1:0] sum;
	output wire cout;
	
	wire [N:0] tempsum;
	
	assign tempsum = {1'b0, in1} + {1'b0, in2} + cin ;
	assign sum = tempsum[N-1:0];
	assign cout = tempsum[N];

endmodule
