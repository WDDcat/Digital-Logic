module Selector(clk,sel);
	input clk;
	output [7:0]sel;
	reg [7:0]sel;
	always @ (posedge clk)
	begin
		case(sel)
		8'b11111110:sel = 8'b11111101;
		8'b11111101:sel = 8'b11111011;
		8'b11111011:sel = 8'b11110111;
		8'b11110111:sel = 8'b11101111;
		8'b11101111:sel = 8'b11011111;
		8'b11011111:sel = 8'b10111111;
		8'b10111111:sel = 8'b01111111;
		8'b01111111:sel = 8'b11111110;
		default:sel = 8'b11111110;
		endcase
	end
endmodule
