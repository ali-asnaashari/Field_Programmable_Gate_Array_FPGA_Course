`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:15:34 11/11/2021 
// Design Name: 
// Module Name:    five_bit_counter 
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


module five_bit_counter(
		input clk,
		output wire [4:0] result
		);
		
		wire A, B, C, D, E;
		wire w1, w2, w3;
		
		and (w1, A, B);
		and (w2, A, B, C);
		and (w3, A, B, C, D);
		
		assign result[4:0] = {E, D, C, B, A};
	 
	 JK_flipflop f1(
			.J(1'b1),
			.K(1'b1),
			.clk(clk),
			.Q(A)
		);

	 JK_flipflop f2(
			.J(A),
			.K(A),
			.clk(clk),
			.Q(B)
		);
		
	 JK_flipflop f3(
			.J(w1),
			.K(w1),
			.clk(clk),
			.Q(C)
		);
		
	 JK_flipflop f4(
			.J(w2),
			.K(w2),
			.clk(clk),
			.Q(D)
		);
		
	 JK_flipflop f5(
			.J(w3),
			.K(w3),
			.clk(clk),
			.Q(E)
		);

endmodule
