`timescale 1ns / 1ps

module DUAL_PORT_RAM_SYNC_TB;

	// Inputs
	reg clockPulse;
	reg writeEnable;
	reg [5:0] First_Port_Read_Address;
	reg [5:0] Second_Port_Read_Address;
	reg [15:0] value;

	// Outputs
	wire [15:0] First_Port_Output;
	wire [15:0] Second_Port_Output;

	// Instantiate the Unit Under Test (UUT)
	DUAL_PORT_RAM_SYNC uut (
		.clockPulse(clockPulse), 
		.writeEnable(writeEnable), 
		.First_Port_Read_Address(First_Port_Read_Address), 
		.Second_Port_Read_Address(Second_Port_Read_Address), 
		.value(value), 
		.First_Port_Output(First_Port_Output), 
		.Second_Port_Output(Second_Port_Output)
	);
	
	initial 
		begin
			clockPulse = 0;
		end
	
	always # 50 clockPulse = ~clockPulse;  //T = 100 ns
	

	initial begin
		writeEnable 				 = 0;
		First_Port_Read_Address  = 0;
		Second_Port_Read_Address = 0;
		value 						 = 0;

		#250;
        
		writeEnable              = 1;
		First_Port_Read_Address  = 5'b00100;
		Second_Port_Read_Address = 5'b01011;
		value                    = 16'b1011000011001011;
		
		#250;
		
		writeEnable              = 0;
		First_Port_Read_Address  = 5'b00111;
		Second_Port_Read_Address = 5'b01000;
		value                    = 16'b0011100000011100;
		
		#250;
		
		writeEnable              = 1;
		First_Port_Read_Address  = 5'b00111;
		Second_Port_Read_Address = 5'b01000;
		value                    = 16'b0011100000011100;
		
		#250;
		

	end
      
endmodule

