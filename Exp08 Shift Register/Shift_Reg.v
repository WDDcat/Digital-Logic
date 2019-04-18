module Shift_Reg(clk,Din,LorR,Dout,en);
	input clk,LorR,en;
	input [7:0]Din;
	output [7:0]Dout;
	reg [7:0]Dout;
	always @ (posedge clk)
	begin
		if(en == 1)
		begin
			Dout = ~Din;
			if(LorR == 0)
			begin
				Dout = Dout<<1;
				Dout = ~Dout;
			end
			else
			begin
				Dout = Dout>>1;
				Dout = ~Dout;
			end
		end
		else	Dout = ~Din;
	end
endmodule
