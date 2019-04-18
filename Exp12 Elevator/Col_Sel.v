module Col_Sel(rst,Col,clk_1khz);
	input rst;
	input clk_1khz;
	output [3:0]Col;
	reg [3:0]Col;
	always @ (posedge clk_1khz)
	begin
		if(rst)	Col = 4'b0000;
		else
			if(Col == 4'b1111) Col=4'b0000;
			else Col = Col + 1'b1;
	end
endmodule
