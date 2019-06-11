module Frequency_Divider(clk_50mhz,rst,clk_1khz,clk_100hz,clk_10hz,clk_1hz);
	input clk_50mhz,rst;
	output clk_1khz,clk_100hz,clk_10hz,clk_1hz;
	reg clk_1khz,clk_100hz,clk_10hz,clk_1hz;
	reg [31:0]cnt1,cnt2,cnt3,cnt4;
	parameter N1=50000,N2=500000,N3=5000000,N4=50000000;
//	parameter N1=5,N2=5,N3=5,N4=5;
	always @ (posedge clk_50mhz)
	begin
		if(!rst)
		begin
			cnt1 <= 1'b0;
			cnt2 <= 1'b0;
			cnt3 <= 1'b0;
			cnt4 <= 1'b0;
			clk_1khz <= 1'b0;
			clk_100hz <= 1'b0;
			clk_10hz <= 1'b0;
			clk_1hz <= 1'b0;
		end
		else
		begin
			if(cnt1 < N1/2-1)	cnt1 <= cnt1 + 1'b1;
			else
			begin
				cnt1 <= 1'b0;
				clk_1khz <= ~clk_1khz;
			end
			if(cnt2 < N2/2-1) cnt2 <= cnt2 + 1'b1;
			else
			begin
				cnt2 <= 1'b0;
				clk_100hz <= ~clk_100hz;
			end
			if(cnt3 < N3/2-1) cnt3 <= cnt3 + 1'b1;
			else
			begin
				cnt3 <= 1'b0;
				clk_10hz <= ~clk_10hz;
			end			
			if(cnt4 < N4/2-1) cnt4 <= cnt4 + 1'b1;
			else
			begin
				cnt4 <= 1'b0;
				clk_1hz <= ~clk_1hz;
			end			
		end
	end
endmodule
