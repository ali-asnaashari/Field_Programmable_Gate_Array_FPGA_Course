`timescale 1ns / 1ps

module oneHotDecoder_TB;

	// Inputs
	reg [2:0] Select;

	// Outputs
	wire [7:0] Result;

	// Instantiate the Unit Under Test (UUT)
	oneHotDecoder uut (
		.Select(Select), 
		.Result(Result)
	);

	initial begin
		Select = 3'b000;
		#100;
		
		Select = 3'b111;
		#100;
		
		Select = 3'b100;
		#100;
		
		Select = 3'b101;
		#100;
		
		Select = 3'b110;
		#100;

	end
      
endmodule

