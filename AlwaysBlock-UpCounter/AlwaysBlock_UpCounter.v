`timescale 1ns / 1ps

module AlwaysBlock_UpCounter(clockPulse,Result);

	input clockPulse;
	output reg [3:0] Result;

	initial
		begin
			Result = 4'b0000;
		end
	always @(posedge clockPulse)
		begin
			Result = Result + 1;
		end

endmodule
