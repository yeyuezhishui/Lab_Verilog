`timescale 1ns / 1ps

module ram#(parameter WIDTH=8)(D,RES,LOAD,Q)
	input	[WIDTH-1:0]	D;
	input	RES;
	input	LOAD;
	output	reg[WIDTH-1:0]	Q;
	
	always @(LEAD or RES or D)
	begin
		if (!RES)
			Q=0;
		else if (LEAD)
			Q=D;
	end
	
endmodule