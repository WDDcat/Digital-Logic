module Frequency_divider(clk_50mhz,rst,clk_1khz);
	input clk_50mhz,rst;
	output clk_1khz;
	reg clk_1khz;
	reg [31:0]cnt1;
	parameter N = 50000;
	always @ (posedge clk_50mhz)
	begin
		if(!rst)
		begin
			cnt1 <= 1'b0;
			clk_1khz <= 1'b0;
		end
		else
		begin
			if(cnt1 < N/2-1)
				cnt1 <= cnt1 + 1'b1;
			else
			begin
				cnt1 <= 1'b0;
				clk_1khz <= ~clk_1khz;
			end
		end
	end
endmodule
