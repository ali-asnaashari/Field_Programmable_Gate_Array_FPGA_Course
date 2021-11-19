`timescale 1ns / 1ps

module D_Latch(D,E,Q,Q_Inverter);

	input  D;
	input  E;
	
	output Q;
	output Q_Inverter;
	
	wire D_not;
	wire and_up;
	wire and_down;


	not (D_not,D);
	and (and_up,E,D_not);
	and (and_down,E,D);
	
	nor (Q,and_up,Q_Inverter);
	nor (Q_Inverter,and_down,Q);
	

endmodule
