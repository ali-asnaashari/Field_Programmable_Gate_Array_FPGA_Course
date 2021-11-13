`timescale 1ns / 1ps

module SR_Latch(S,R,E,Q,Q_Inverter);

	input S;
	input R;
	input E;
	
	output Q;
	output Q_Inverter;
	
	and (and_up,E,R);
	and (and_down,E,S);
	
	nor (Q,and_up,Q_Inverter);
	nor (Q_Inverter,and_down,Q);
	
	


endmodule
