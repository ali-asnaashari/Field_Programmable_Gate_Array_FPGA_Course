`timescale 1ns / 1ps


(*mult_style = "pipe_lut"*)
module Pipeline_Multiplier(clockPulse,inputOne,inputTwo,result);

	input clockPulse;

	input [7:0] inputOne;
	input [7:0] inputTwo;
	
	reg [7:0] input_A;
	reg [7:0] input_B;
	
	reg [15:0] pipeLine_A;
	
	wire [15:0] multResult;
	
	output reg [15:0] result;
	
	assign multResult = input_A * input_B;
	
	always@(posedge clockPulse)
		begin
			input_A <= inputOne;
			input_B <= inputTwo;
			
			pipeLine_A <= multResult;
			
			result <= pipeLine_A;
		
		end
	
endmodule
