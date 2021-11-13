`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:51:29 11/13/2021 
// Design Name: 
// Module Name:    BRAM 
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
module BRAM( clk, we, addr, di, dout);
	parameter SIZE = 512;
	parameter ADDR_WIDTH = 9;
	parameter DI_WIDTH = 8;
	input clk;
	input [1:0] we;
	input [ADDR_WIDTH-1:0] addr;
	input [2*DI_WIDTH-1:0] di;
	output [2*DI_WIDTH-1:0] dout;
	reg [2*DI_WIDTH-1:0] RAM [SIZE-1:0];
	reg [2*DI_WIDTH-1:0] dout;
	reg [DI_WIDTH-1:0] di0, di1;
	
	
	always @(we or di) begin
	
		if (we[1])
			di1 = di[2*DI_WIDTH-1:1*DI_WIDTH];
		
		else
			di1 = RAM[addr][2*DI_WIDTH-1:1*DI_WIDTH];
			
		if (we[0])
			di0 = di[DI_WIDTH-1:0];
			
		else 
			di0 = RAM[addr][DI_WIDTH-1:0];
	end
	
	always @(posedge clk) begin
	
	RAM[addr] <= {di1, di0};
	dout <= RAM[addr];
	
	end
	

endmodule
