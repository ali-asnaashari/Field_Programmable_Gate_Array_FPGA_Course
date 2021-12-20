`timescale 1ns / 1ps

module Sequence_Detector_V1(InputDetector,result,Count);

	input [1:0] InputDetector;

	output reg result;
	output reg [5:0] Count;
	
	reg [1:0] state;
	
	
	initial 
		begin
			state  = 2'b00;
			Count  = 5'b00000;
		end
		
		always @(InputDetector) 
		
		begin
			result <= 1'b0;
			case(state)
				2'b00: 
					begin
						if(InputDetector == 2'b11)
							begin
								state <= 2'b01;
							end
					end
				2'b01:
					begin
						if(InputDetector == 2'b00)
							begin
								state <= 2'b10;
							end
						else
							state <= 2'b00;	
					end
				2'b10:
					begin
						if(InputDetector == 2'b01)
							begin
								state <= 2'b11;
							end
						else
							   state <= 2'b00;	

					end
				2'b11:
					begin
						if(InputDetector == 2'b10)
							begin
								$display("Wow Pattern Find");
								Count <= Count + 1;
								result <= 1'b1;
								state  <= 2'b00;	
							end
						else
								state <= 2'b00;	

					end
			endcase
		end


		

endmodule
