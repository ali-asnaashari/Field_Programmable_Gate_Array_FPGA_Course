`timescale 1ns / 1ps

module Shift_Register_PartOne_TB;

	// Inputs
	reg clockPulse;
	reg Reset;
	reg ParallelLoad;
	reg ShiftLeft;
	reg ShiftRight;
	reg ShiftInput;
	reg [3:0] Data;

	// Outputs
	wire ShiftOutput;
	wire [3:0] dataBus;

	// Instantiate the Unit Under Test (UUT)
	Shift_Register_PartOne uut (
		.clockPulse(clockPulse), 
		.Reset(Reset), 
		.ParallelLoad(ParallelLoad), 
		.ShiftLeft(ShiftLeft), 
		.ShiftRight(ShiftRight), 
		.ShiftInput(ShiftInput), 
		.Data(Data), 
		.ShiftOutput(ShiftOutput),
		.dataBus(dataBus)
	);
	
	initial 
		begin
			clockPulse = 0;
		end
	
	always # 50 clockPulse = ~clockPulse;  //T = 100 ns

	initial begin

		Reset = 1;
		ParallelLoad = 0;
		ShiftLeft = 0;
		ShiftRight = 0;
		ShiftInput = 0;
		Data = 0;

		#100;
		
		Reset = 0;
		ParallelLoad = 1;
		ShiftLeft = 0;
		ShiftRight = 0;
		ShiftInput = 0;
		Data = 4'b1110;
		
		#100;
		
		Reset = 0;
		ParallelLoad = 0;
		ShiftLeft = 1;
		ShiftRight = 0;
		ShiftInput = 1;
		Data = 0;
		
		#100;
		
		Reset = 0;
		ParallelLoad = 0;
		ShiftLeft = 0;
		ShiftRight = 1;
		ShiftInput = 0;
		Data = 0;
		
		#100;
		
		Reset = 0;
		ParallelLoad = 0;
		ShiftLeft =  1;
		ShiftRight = 1;
		ShiftInput = 0;
		Data = 0;


	end
      
endmodule

