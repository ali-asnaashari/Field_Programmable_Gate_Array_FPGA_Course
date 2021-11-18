`timescale 1ns / 1ps

module AlwaysBlock(clockPulse,Result);

	input clockPulse;
	output reg [4:0] Result;

	initial
		begin
			Result = 5'b00000;
		end
		
	always @(posedge clockPulse)
		begin
			Result = Result + 1;
		end


endmodule
