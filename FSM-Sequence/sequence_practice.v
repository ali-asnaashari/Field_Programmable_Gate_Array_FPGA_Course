`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:44:24 11/14/2021 
// Design Name: 
// Module Name:    sequence_practice 
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
module sequence_practice(clk, reset, outp);
	
	input clk, reset;
	output reg [2:0] outp;
	
	reg [2:0] state;
	reg [2:0] next_state;
	
	parameter s1 = 3'b101; //5
	parameter s2 = 3'b100; //4
	parameter s3 = 3'b111; //7
	parameter s4 = 3'b110; //6
	parameter s5 = 3'b001;
	parameter s6 = 3'b000;
	parameter s7 = 3'b011;
	parameter s8 = 3'b010;
	
	initial state = 3'b101;
	
	always @(posedge clk or posedge reset) begin
	
		if (reset) state <= s1;
		else state <= next_state;
	
	end
	
	always @(state) begin
		
		case(state)
	
		s1: next_state = s2;
		s2: next_state = s3;
		s3: next_state = s4;
		s4: next_state = s5;
		s5: next_state = s6;
		s6: next_state = s7;
		s7: next_state = s8;
		s8: next_state = s1;
		
		endcase
		
		outp <= state;
		
	end
	


endmodule
