`timescale 1ns / 1ps

module BCD_To_SevenSegment(BCD_Number,Number_Of_Tens,Number_Of_Ones);

	input [7:0] BCD_Number;
	
	output reg [6:0] Number_Of_Tens;
	output reg [6:0] Number_Of_Ones;
	
	always @(BCD_Number[3:0])
   begin
       case (BCD_Number[3:0])
           0 : Number_Of_Ones = 7'b1111110;
           1 : Number_Of_Ones = 7'b0110000;
           2 : Number_Of_Ones = 7'b1101101;
           3 : Number_Of_Ones = 7'b1111001;
           4 : Number_Of_Ones = 7'b0110011;
           5 : Number_Of_Ones = 7'b1011011;
           6 : Number_Of_Ones = 7'b1011111;
           7 : Number_Of_Ones = 7'b1110000;
           8 : Number_Of_Ones = 7'b1111111;
           9 : Number_Of_Ones = 7'b1111011;
           default : Number_Of_Ones = 7'b0000000; 
       endcase
   end
	
	always @(BCD_Number[7:4])
   begin
       case (BCD_Number[7:4]) 
           0 : Number_Of_Tens = 7'b1111110;
           1 : Number_Of_Tens = 7'b0110000;
           2 : Number_Of_Tens = 7'b1101101;
           3 : Number_Of_Tens = 7'b1111001;
           4 : Number_Of_Tens = 7'b0110011;
           5 : Number_Of_Tens = 7'b1011011;
           6 : Number_Of_Tens = 7'b1011111;
           7 : Number_Of_Tens = 7'b1110000;
           8 : Number_Of_Tens = 7'b1111111;
           9 : Number_Of_Tens = 7'b1111011;
           default : Number_Of_Tens = 7'b0000000; 
       endcase
   end


endmodule
