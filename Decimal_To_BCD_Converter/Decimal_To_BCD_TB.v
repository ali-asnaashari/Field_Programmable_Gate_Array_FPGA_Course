`timescale 1ns / 1ps

module Decimal_To_BCD_TB;

	// Inputs
	reg [6:0] Decimal;

	// Outputs
	wire [3:0] Tens;
	wire [3:0] Ones;
	wire [7:0] BCD;

	// Instantiate the Unit Under Test (UUT)
	Decimal_To_BCD uut (
		.Decimal(Decimal), 
		.Tens(Tens), 
		.Ones(Ones),
		.BCD(BCD)
	);

	initial begin
		Decimal = 1;
		
		#100;
		Decimal = 99;
		
		#100;
		Decimal = 10;
		
		#100;
		Decimal = 50;
		
		#100;
		Decimal = 82;

	end
      
endmodule

