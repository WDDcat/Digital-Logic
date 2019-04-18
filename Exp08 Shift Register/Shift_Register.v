module Shift_Register(clk,Din,Num,LorR,Dout);
	input clk,LorR;
	input [7:0]Din;
	input [2:0]Num;
	output [7:0]Dout;
	reg [7:0]Dout;
	reg [2:0]N = 1'b0;
	reg temp;
	always @ (posedge clk)
	begin
		Dout[7] = Din[7];
		Dout[6] = Din[6];
		Dout[5] = Din[5];
		Dout[4] = Din[4];
		Dout[3] = Din[3];
		Dout[2] = Din[2];
		Dout[1] = Din[1];	
		Dout[0] = Din[0];
		if(LorR == 0)
		begin
			while(N < Num)
			begin
				temp = Dout[7];
				Dout[7] = Dout[6];
				Dout[6] = Dout[5];
				Dout[5] = Dout[4];
				Dout[4] = Dout[3];
				Dout[3] = Dout[2];
				Dout[2] = Dout[1];
				Dout[1] = Dout[0];
				Dout[0] = temp;
				N = N + 1'b1;
			end
		end
		else if (LorR == 1)
		begin
			while(N < Num)
			begin
				temp = Dout[0];
				Dout[0] = Dout[1];
				Dout[1] = Dout[2];
				Dout[2] = Dout[3];
				Dout[3] = Dout[4];
				Dout[4] = Dout[5];
				Dout[5] = Dout[6];
				Dout[6] = Dout[7];
				Dout[7] = temp;			
				N = N + 1'b1;
			end
		end
	end
endmodule

