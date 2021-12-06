`timescale 1ns / 1ps

module DUAL_PORT_RAM_ASYNC(clockPulse,writeEnable,First_Port_Read_Address,Second_Port_Read_Address,value,
									First_Port_Output,Second_Port_Output);

	input clockPulse;
	input writeEnable;
	
	input [5:0] First_Port_Read_Address;
	input [5:0] Second_Port_Read_Address;
	input [15:0] value;
	
	output [15:0] First_Port_Output;
	output [15:0] Second_Port_Output;

	// RAM (row = 64 col = 16)
	reg [15:0] MY_DUAL_PORT_RAM [63:0];
	
	initial
		begin
			$readmemb("Memory_Initialization.txt", MY_DUAL_PORT_RAM);
		end

	always @(posedge clockPulse) 
		begin
			if (writeEnable)
				MY_DUAL_PORT_RAM[First_Port_Read_Address] <= value;
		end
		
	assign First_Port_Output  = MY_DUAL_PORT_RAM[First_Port_Read_Address];
	assign Second_Port_Output = MY_DUAL_PORT_RAM[Second_Port_Read_Address];
	

endmodule