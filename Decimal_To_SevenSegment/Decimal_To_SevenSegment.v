`timescale 1ns / 1ps

module Decimal_To_SevenSegment(Decimal,Result);

	 input[6:0] Decimal;
	 
	 wire [3:0] Tens_Out;        // Tens
	 wire [3:0] Ones_Out; 		 // sOnes
	 wire [7:0] BCD_Out; 	   // 8 Bit For BCD
	 
	 output [13:0] Result;   // 14 Bit For 7Segment


	// Decimal To BCD Instance
	Decimal_To_BCD D2B (
    .Decimal(Decimal), 
    .Tens(Tens_Out), 
    .Ones(Ones_Out),
    .BCD(BCD_Out)
    );
	 
	// BCD To SevenSegment Instance
	BCD_To_SevenSegment B2S (
    .BCD_Number(BCD_Out), 
    .Number_Of_Tens(Result[13:7]), 
    .Number_Of_Ones(Result[6:0])
    );



endmodule
