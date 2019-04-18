module Col_Sel(Col,clk);
	input clk;
	output [3:0]Col;
	reg [3:0]Col;
	always @ (posedge clk)
	begin
		if(Col == 4'b1111)	Col = 4'b0000;
		else Col = Col + 1'b1;
	end
endmodule
