module Encoder(num,out1,out0);
	input [7:0]num;
	output [3:0]out0,out1;
	assign out0 = {num[3],num[2],num[1],num[0]};
	assign out1 = {num[7],num[6],num[5],num[4]};
endmodule
