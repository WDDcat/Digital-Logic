module Selector(sel,clk_1khz,en,select);
	input [2:0]sel;
	input clk_1khz;
	input en;
	output [7:0]select;
	reg [7:0]select;
	always @ (posedge clk_1khz)
	begin
		if(en == 1)
			case(sel)
				3'b000:select=0000_0001;
				3'b001:select=0000_0010;
				3'b010:select=0000_0100;
				3'b011:select=0000_1000;
				3'b100:select=0001_0000;
				3'b101:select=0010_0000;
				3'b110:select=0100_0000;
				3'b111:select=1000_0000;
			endcase
	end
endmodule
	