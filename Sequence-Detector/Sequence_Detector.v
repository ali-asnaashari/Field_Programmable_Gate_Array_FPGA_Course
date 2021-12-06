`timescale 1ns / 1ps

module Sequence_Detector(clockPulse, reset, result);


	input clockPulse;
	input reset;
	
	output reg [1:0] result;
	
	reg [1:0] state;
	reg [1:0] nextState;

	parameter s1 = 2'b11;  	  // 3
	parameter s2 = 2'b00; 	 // 0
	parameter s3 = 2'b01;	// 1
	parameter s4 = 2'b10;  // 2

	
	initial 
		begin
			state = 2'b11;
		end
		
	always @(posedge clockPulse or posedge reset) 
		begin
	
			if (reset) 
				state <= s1;
			else 
				state <= nextState;
	
		end
	
	always @(state) 
		begin
		
			case(state)
	
				s1: nextState = s2;
				s2: nextState = s3;
				s3: nextState = s4;
				s4: nextState = s1;
		
			endcase
		
			result <= state;
		
		end

endmodule
