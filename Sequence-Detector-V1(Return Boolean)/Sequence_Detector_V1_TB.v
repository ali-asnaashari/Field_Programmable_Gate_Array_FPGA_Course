`timescale 1ns / 1ps

module Sequence_Detector_V1_TB;

	// Inputs
	reg [1:0] InputDetector;

	// Outputs
	wire result;
	wire [5:0] Count;

	// Instantiate the Unit Under Test (UUT)
	Sequence_Detector_V1 uut (
		.InputDetector(InputDetector), 
		.Count(Count),
		.result(result)
	);

	initial begin
		InputDetector = 2'b11;
		
		#100;	;
		InputDetector = 2'b00;
		
		#100;	
		InputDetector = 2'b10;
		
		#100;	
		InputDetector = 2'b11;
		
		#100;	
		InputDetector = 2'b00;
		
		#100;	
		InputDetector = 2'b01;
		
		#100;	
		InputDetector = 2'b10;
		
		#100;	
		InputDetector = 2'b10;
		
		#100;	
		InputDetector = 2'b11;
		
		#100;	
		InputDetector = 2'b00;
		
		#100;	
		InputDetector = 2'b01;
		
		#100;	
		InputDetector = 2'b10;
		
		#100;	
		InputDetector = 2'b01;
		
		#100;	
		InputDetector = 2'b00;
		
		#100;	
		InputDetector = 2'b11;
		
		#100;	
		InputDetector = 2'b00;
		
		#100;	
		InputDetector = 2'b01;
		
		#100;	
		InputDetector = 2'b10;
		
		#100;	
		InputDetector = 2'b01;

	end
      
endmodule

