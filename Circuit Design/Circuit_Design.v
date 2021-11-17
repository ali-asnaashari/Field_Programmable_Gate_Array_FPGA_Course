`timescale 1ns / 1ps

module Circuit_Design(Start,clockPulse,InputPorts,Count,OverFlow);

	input Start;
	input clockPulse;
	input [3:0] InputPorts;
	
	output reg [7:0] Count;
	output reg OverFlow;
	
	// Inital Value
	initial 
		begin
			Count = 8'b0;
			OverFlow = 1'b0;
		end
	
	// OR
	wire OR_output;
	or  (OR_output, InputPorts[0], ~InputPorts[1], InputPorts[2], ~InputPorts[3]);

	// Sum Operation
	wire [8:0] AddedValue;
	assign AddedValue = Count +{8'h0 , OR_output};
	
	// Upper Multiplexer
	reg [7:0]UM_output;
	always @(Start or AddedValue[7:0])
		begin
			case(Start)
				1'b0: UM_output = 8'b00000000;
				1'b1: UM_output = AddedValue[7:0];
			endcase 
		end

	// Bottom Multiplexer
	reg BM_output;
	
	wire Cout;
	assign Cout = AddedValue[8];
	
	always @(Start, OverFlow, Cout)
		begin
			case( {Start,OverFlow} )
				2'b00: BM_output = Cout;
				2'b01: BM_output = 1;
				2'b10: BM_output = 0;
				2'b11: BM_output = 0;
			endcase
		end

	
	// D-FlipFlop
	always @(posedge clockPulse)
		begin
			Count <= UM_output;
		end
		

	always @(posedge clockPulse)
		begin
			OverFlow <= BM_output;
		end


endmodule
