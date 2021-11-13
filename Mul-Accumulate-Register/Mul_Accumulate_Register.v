`timescale 1ns / 1ps

module Mul_Accumulate_Register(numberOne,numberTwo,clockPulse,Reset,Result);

		input [7:0] numberOne;
		input [7:0] numberTwo;
		input clockPulse;
		input Reset;
		
		output [15:0] Result;
		
		reg [15:0] Mul;
		reg [15:0] Accum;
		
		always @(posedge clockPulse)
			begin
				if(Reset)
					Mul <= 16'b0000000000000000;
				else
					Mul <= numberOne * numberTwo;
			end
			
		always @(posedge clockPulse)
			begin
				if(Reset)
					Accum <= 16'b0000000000000000;
				else
					Accum <= Accum + Mul;
			end
			
			assign Result = Accum;

endmodule
