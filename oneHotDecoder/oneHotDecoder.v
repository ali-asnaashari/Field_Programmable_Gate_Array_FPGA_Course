`timescale 1ns / 1ps

module oneHotDecoder(Select,Result);

	input  [2:0] Select;
	output reg [7:0] Result;
	
	always @(Select or Result)
		begin
			case(Select)
				3'b000  : Result = 8'b00000001;
				3'b001  : Result = 8'b00000010;
				3'b010  : Result = 8'b00000100;
				3'b011  : Result = 8'b00001000;
				3'b100  : Result = 8'b00010000;
				3'b101  : Result = 8'b00100000;
				3'b110  : Result = 8'b01000000;
				default : Result = 8'b10000000;
			endcase
		end


endmodule
