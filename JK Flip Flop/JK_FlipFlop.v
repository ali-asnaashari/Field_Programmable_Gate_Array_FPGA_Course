`timescale 1ns / 1ps

module JK_FlipFlop(J,K,clockPulse,Q,Q_Inverter);

	/* Gate Level 
	input J;
	input K;
	input clockPulse;


	output Q;
	output Q_Inverter;


	wire nand_up;
	wire nand_down;
	
			
	nand (nand_up, J,clockPulse,Q_Inverter);	
	nand (nand_down, K,clockPulse,Q);
	
	nand (Q,Q_Inverter,nand_up);
	nand (Q_Inverter,Q,nand_down);
	*/
	
	input J;
	input K;
	input clockPulse;
		
	output reg Q;
	output reg Q_Inverter;
				
	initial begin
		Q = 0;
		Q_Inverter = 1;
	end
		
	always @(posedge clockPulse)
	begin
		 if (~J & ~K)
		 begin
			 Q <= Q;
			 Q_Inverter <= Q_Inverter;
		 end
		 else if (~J & K)
		 begin
			 Q <= 0;
			 Q_Inverter <= 1;
		 end
		 else if (J & ~K)
		 begin
			 Q <= 1;
			 Q_Inverter <= 0;
		 end
		 else if (J & K)
		 begin
			 Q <= ~Q;
			 Q_Inverter <= ~Q_Inverter;
		 end
	end

endmodule
