`timescale 1ns / 1ps


module BCD_To_SevenSegment_TB;

	// Inputs
	reg [7:0] BCD_Number;

	// Outputs
	wire [6:0] Number_Of_Tens;
	wire [6:0] Number_Of_Ones;

	// Instantiate the Unit Under Test (UUT)
	BCD_To_SevenSegment uut (
		.BCD_Number(BCD_Number), 
		.Number_Of_Tens(Number_Of_Tens), 
		.Number_Of_Ones(Number_Of_Ones)
	);

	initial begin

		// 24 Decimal ---> BCD: 0010_0100 ---> Number_Of_Tens :  1101101 AND Number_Of_Ones: 0110011
		BCD_Number = 8'b0010_0100;

		#500;
		
		// 99 Decimal ---> BCD: 1001_1001 ---> Number_Of_Tens :  1111011 AND Number_Of_Ones: 1111011
		BCD_Number = 8'b1001_1001;


	end
      
endmodule

