`timescale 1ns / 1ps

module JK_FlipFlop_Five_Bit_UpCounter(clockPulse,Result);

	input  clockPulse;
	output [4:0] Result;

	wire A;
	wire B;
	wire C;
	wire D;
	wire E;
	
	wire First_And_Output;
	wire SecondAND;
	wire ThirdAND;
		


	// JK_FlipFlopOne
	JK_FlipFlop FFA (
		 .J(1), 
		 .K(1), 
		 .clockPulse(clockPulse), 
		 .Q(A), 
		 .Q_Inverter(Q_InverterA)
		 );

	// JK_FlipFlopTwo
	JK_FlipFlop FFB (
		 .J(Result[0]), 
		 .K(Result[0]), 
		 .clockPulse(clockPulse), 
		 .Q(B), 
		 .Q_Inverter(Q_InverterB)
		 );
		 
	and (First_And_Output, A, B);
	
	// JK_FlipFlopThree
	JK_FlipFlop FFC (
		 .J(First_And_Output), 
		 .K(First_And_Output), 
		 .clockPulse(clockPulse), 
		 .Q(C), 
		 .Q_Inverter(Q_InverterC)
		 );
		 
		 
	and (Second_And_Output, A, B, C);	
	
	// JK_FlipFlopFour
	JK_FlipFlop FFD (
		 .J(Second_And_Output), 
		 .K(Second_And_Output), 
		 .clockPulse(clockPulse), 
		 .Q(D), 
		 .Q_Inverter(Q_InverterD)
		 );
		 
	and (Third_And_Output, A, B, C, D);
		
	// JK_FlipFlopFive
	JK_FlipFlop FFE (
		 .J(Third_And_Output), 
		 .K(Third_And_Output), 
		 .clockPulse(clockPulse), 
		 .Q(E), 
		 .Q_Inverter(Q_InverterE)
		 );
		 
	assign Result = {E,D,C,B,A};


endmodule
