`timescale 1ns / 1ps

module JK_FlipFlop_UpCounter(clockPulse,Result);

	input  clockPulse;
	output [3:0] Result;

	wire First_And_Output;
	wire Second_And_Output;

	// JK_FlipFlopOne
	JK_FlipFlop FFA (
		 .J(1), 
		 .K(1), 
		 .clockPulse(clockPulse), 
		 .Q(Result[0]), 
		 .Q_Inverter(Q_InverterA)
		 );

	// JK_FlipFlopTwo
	JK_FlipFlop FFB (
		 .J(Result[0]), 
		 .K(Result[0]), 
		 .clockPulse(clockPulse), 
		 .Q(Result[1]), 
		 .Q_Inverter(Q_InverterB)
		 );

	and (First_And_Output, Result[0], Result[1]);
	
	// JK_FlipFlopThree
	JK_FlipFlop FFC (
		 .J(First_And_Output), 
		 .K(First_And_Output), 
		 .clockPulse(clockPulse), 
		 .Q(Result[2]), 
		 .Q_Inverter(Q_InverterC)
		 );

	and (Second_And_Output, Result[2], First_And_Output);

	// JK_FlipFlopFour
	JK_FlipFlop FFD (
		 .J(Second_And_Output), 
		 .K(Second_And_Output), 
		 .clockPulse(clockPulse), 
		 .Q(Result[3]), 
		 .Q_Inverter(Q_InverterD)
		 );


endmodule
