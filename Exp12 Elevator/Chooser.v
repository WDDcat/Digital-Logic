module Chooser(dataout,rst,data1,data2,data3,data4,data5,data6,data7,data8,sel);
	input rst;
	input [7:0]sel;
	input [4:0]data1,data2,data3,data4,data5,data6,data7,data8;
	output [4:0]dataout;
	reg [4:0]dataout;
	always @ (*)
	begin
		if(rst)	dataout=data1;
		else
			case(sel)
				8'b11111110:dataout = data1;
				8'b11111101:dataout = data2;
				8'b11111011:dataout = data3;
				8'b11110111:dataout = data4;
				8'b11101111:dataout = data5;
				8'b11011111:dataout = data6;
				8'b10111111:dataout = data7;
				8'b01111111:dataout = data8;
				default:dataout = data1;
			endcase
	end
endmodule
