`timescale 1ns / 1ps


module Decimal_To_BCD(Decimal,Tens,Ones,BCD);

	 // Because The Largest Two-Digit Number(99) is Defined In 7 Bit.
	 input 		[6:0] Decimal;
	 
    output reg [3:0] Tens;
    output reg [3:0] Ones;
    output  [7:0] BCD;
	 
	 
	integer item;

	always @(Decimal)
		begin
			Tens = 0;
			Ones = 0;
			for (item = 6; item>=0; item=item-1)
				begin
				
					if (Tens > 4)
						Tens = Tens + 3;
						
					if (Ones > 4)
						Ones = Ones + 3;
					
					Tens = Tens << 1;
					Tens[0] = Ones[3];
					Ones = Ones << 1;
					Ones[0] = Decimal[item];
				end
			
		end
		assign BCD = {Tens,Ones};
		

endmodule