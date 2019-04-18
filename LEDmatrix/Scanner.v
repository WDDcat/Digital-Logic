module Scanner(Row,Col_Select,Col00,Col01,Col02,Col03,Col04,Col05,Col06,Col07,Col08,Col09,Col10,Col11,Col12,Col13,Col14,Col15);
	output [15:0]Row;
	input [15:0] Col00,Col01,Col02,Col03,Col04,Col05,Col06,Col07,Col08,Col09,Col10,Col11,Col12,Col13,Col14,Col15;
	input [3:0]Col_Select;
	reg [15:0]Row;
	always @ (Row)
	begin
		case(Row)
		4'b0000:Row = Col00;
		4'b0001:Row = Col01;
		4'b0010:Row = Col02;
		4'b0011:Row = Col03;
		4'b0100:Row = Col04;
		4'b0101:Row = Col05;
		4'b0110:Row = Col06;
		4'b0111:Row = Col07;
		4'b1000:Row = Col08;
		4'b1001:Row = Col09;
		4'b1010:Row = Col10;
		4'b1011:Row = Col11;
		4'b1100:Row = Col12;
		4'b1101:Row = Col13;
		4'b1110:Row = Col14;
		4'b1111:Row = Col15;
		endcase
	end
endmodule
