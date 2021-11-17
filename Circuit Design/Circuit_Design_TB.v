`timescale 1ns / 1ps

module Circuit_Design_TB;

	// Inputs
	reg Start;
	reg clockPulse;
	reg [3:0] InputPorts;

	// Outputs
	wire [7:0] Count;
	wire OverFlow;

	// Instantiate the Unit Under Test (UUT)
	Circuit_Design uut (
		.Start(Start), 
		.clockPulse(clockPulse), 
		.InputPorts(InputPorts), 
		.Count(Count), 
		.OverFlow(OverFlow)
	);
	initial begin
		clockPulse = 0;
	end
	
	always # 50 clockPulse = ~clockPulse;  //T = 100 ns
	
	initial begin
		Start = 1;
		InputPorts = 1000;

		#100;
		
		Start = 0;
		InputPorts = 1010;

		#100;
		
		Start = 1;
		InputPorts = 0101;

		#100;
		
		Start = 0;
		InputPorts = 1010;

		#100;


	end
      
endmodule

