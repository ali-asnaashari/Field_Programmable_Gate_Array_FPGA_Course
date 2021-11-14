`timescale 1ns / 1ps

module T_FlipFlop(T,clockPulse,Q,Q_Inverter);

	input T;
	input clockPulse;
	
	output Q;
	output Q_Inverter;
	
	reg Data;
	initial begin
		Data = 1'b0;
	end

	assign Q = Data;
	assign Q_Inverter = ~Data;
	
	always @(posedge clockPulse)
		Data <= Data ^ T;
	

endmodule
