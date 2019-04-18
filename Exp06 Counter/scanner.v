module scanner(clk,sel,ds);
	input clk;
	output [2:0]sel;
	output [7:0]ds;
	reg [2:0]sel;
	reg [7:0]ds;
	always @ (posedge clk)
	begin
		case(sel)
			3'b000:begin
					sel = sel + 1'b1;
					ds = 8'b00000010;
				end
			3'b001:begin
					sel = sel + 1'b1;
					ds = 8'b00000100;
				end
			3'b010:begin
					sel = sel + 1'b1;
					ds = 8'b00001000;
				end
			3'b011:begin
					sel = sel + 1'b1;
					ds = 8'b00010000;
				end
			3'b100:begin
					sel = sel + 1'b1;
					ds = 8'b00100000;
				end
			3'b101:begin
					sel = sel + 1'b1;
					ds = 8'b01000000;
				end
			3'b110:begin
					sel = sel + 1'b1;
					ds = 8'b10000000;
				end
			3'b111:begin
					sel = sel + 1'b1;
					ds = 8'b00000001;
				end
			default:begin
					sel = 3'b000;
					ds = 8'b00000000;
				end
		endcase
	end
endmodule
