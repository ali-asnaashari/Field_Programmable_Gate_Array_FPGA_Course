`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:23 11/13/2021 
// Design Name: 
// Module Name:    seven_seg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module seven_seg(
	input [6:0] dec,
	output reg [6:0] seg1,
	output reg [6:0] seg0
    );
	 
	 wire [3:0] c1;
	 wire [3:0] c0;
	 
	 bin2bcd my_bcd( .bin(dec), .bcd({c1, c0}));
	 
	 always @(c1 || c0) begin
	 
			case (c1) 
            0 : seg1 = 7'b0111111;
            1 : seg1 = 7'b0000110;
            2 : seg1 = 7'b1011011;
            3 : seg1 = 7'b1001111;
            4 : seg1 = 7'b1100110;
            5 : seg1 = 7'b1101101;
            6 : seg1 = 7'b1111101;
            7 : seg1 = 7'b0000111;
            8 : seg1 = 7'b1111111;
            9 : seg1 = 7'b1100111;
				
            default : seg1 = 7'b1111111; 
        endcase
		  
		  case (c0) 
            0 : seg0 = 7'b0111111;
            1 : seg0 = 7'b0000110;
            2 : seg0 = 7'b1011011;
            3 : seg0 = 7'b1001111;
            4 : seg0 = 7'b1100110;
            5 : seg0 = 7'b1101101;
            6 : seg0 = 7'b1111101;
            7 : seg0 = 7'b0000111;
            8 : seg0 = 7'b1111111;
            9 : seg0 = 7'b1100111;
				
            default : seg0 = 7'b1111111; 
        endcase
	 
	 end
	
	
	

endmodule
