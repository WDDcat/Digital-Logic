module Chooser(data,data1,data2,data3,data4,data5,data6,data7,data8,sel);
	input [7:0]sel;
	input [3:0]data1,data2,data3,data4,data5,data6,data7,data8;
	output [3:0]data;
	reg [3:0]data;
	always @ (sel)
	begin
		case(sel)
			8'b11111110:data = data1;
			8'b11111101:data = data2;
			8'b11111011:data = data3;
			8'b11110111:data = data4;
			8'b11101111:data = data5;
			8'b11011111:data = data6;
			8'b10111111:data = data7;
			8'b01111111:data = data8;
			default:data = data1;
		endcase
	end
endmodule
