`timescale 1ns / 1ps

module Shift_Register_PartOne(clockPulse,Reset,ParallelLoad,ShiftLeft,ShiftRight,ShiftInput,Data,ShiftOutput,dataBus);

   
	input clockPulse;
   input Reset;
   input ParallelLoad;
   input ShiftLeft;
   input ShiftRight;
	input ShiftInput;
   input [3:0] Data;
	
	output reg ShiftOutput;
	
	output reg [3:0] dataBus;

	always @(posedge clockPulse) 
	
		begin
			if (Reset)
				dataBus <= 4'b0000;
				
			else if (ParallelLoad)
				dataBus <= Data;
				
			else if (ShiftLeft) 
				begin
					dataBus <= {dataBus[2:0], ShiftInput};
					ShiftOutput <= dataBus[3];
				end
				
			else if (ShiftRight) 
				begin
					dataBus <= {ShiftInput,dataBus[3:1]};
					ShiftOutput <= dataBus[0];
				end
		end

endmodule
