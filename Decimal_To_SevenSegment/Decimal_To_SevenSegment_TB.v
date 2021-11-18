`timescale 1ns / 1ps


module Decimal_To_SevenSegment_TB;

	// Inputs
	reg [6:0] Decimal;

	// Outputs
	//wire [3:0] Tens;
	//wire [3:0] Ones;
	wire [13:0] Result;

	// Instantiate the Unit Under Test (UUT)
	Decimal_To_SevenSegment uut (
		.Decimal(Decimal), 

		.Result(Result)
	);
	
		//	.Tens(Tens), 
	//	.Ones(Ones),

	initial begin
		// Initialize Inputs
		Decimal = 24;
		#200;
		Decimal = 99;
		#200;
		Decimal = 81;
		#200;
		Decimal = 72;
		#200;
		Decimal = 3;
		#200;
		Decimal = 12;

	end
      
endmodule

