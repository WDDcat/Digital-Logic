module Adder(AA,BB,CC,co);
	input [3:0]AA,BB;
	output [3:0]CC;
	output co;
	wire [3:0]temp;
	wire co1,co2,co3,co4;
		assign temp[0] = AA[0] ^ BB[0];
		assign co1 = AA[0] && BB[0];
		assign temp[1] = (AA[1] ^ BB[1]) ^ co1;
		assign co2 = (AA[1] && co1) || (BB[1] && co1) || (AA[1] && BB[1]);
		assign temp[2] = (AA[2] ^ BB[2]) ^ co2;
		assign co3 = (AA[2] && co2) || (BB[2] && co2) || (AA[2] && BB[2]);
		assign temp[3] = (AA[3] ^ BB[3]) ^ co3;
		assign co4 = (AA[3] && co3) || (BB[3] && co3) || (AA[3] && BB[3]);
	reg co;
	reg [3:0]CC;
	always @ (temp)
	begin
		CC = temp;
		if(CC >= 4'b1010)
		begin
			co = 1;
			CC = CC + 4'b0110;
		end
		else co=0;
		if(co4 == 1)
		begin
			co = 1;
			CC = CC + 4'b0110;
		end
	end
endmodule
	