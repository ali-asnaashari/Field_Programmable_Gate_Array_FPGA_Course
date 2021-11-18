`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:13:43 11/06/2021 
// Design Name: 
// Module Name:    JK_flipflop 
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
module JK_flipflop(
		input J,
		input K,
		input clk,
		output reg Q,
		output reg Q_bar
    );
	 
	 
	 always @(negedge clk) begin
	 
	 
	 if (K == 0 && J == 0)begin
		
		Q <= Q;
		Q_bar <= Q_bar;
		
	 end
	 
	 else if(K == 0 && J == 1) begin
		
		Q <= 1;
		Q_bar <= 0;
	 
	 end
	 
	 else if(K == 1 && J == 0) begin
	 
		Q <= 0;
		Q <= 1;
	 
	 end
	 
	 else if(K == 1 && J == 1) begin
	 
		Q <= ~Q;
		Q_bar <= ~Q_bar;
	 
	 end
	 
	 if (Q === 1'bX) begin
	 
		Q <= 0;
		Q_bar <= 1;
		
	 end
	 
	 
	 end


endmodule
