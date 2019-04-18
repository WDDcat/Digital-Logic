module delay(in,out,clk_100hz);
	input clk_100hz;
	input [1:0]in;
	output [1:0]out;
	reg [1:0]out;
	always @ (posedge clk_100hz)
	begin
		out<=in;
	end
endmodule
	