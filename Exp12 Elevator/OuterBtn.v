module OuterBtn(clk_1khz,E1U,E2U,E2D,E3U,E3D,E4D,data1,data2,data3,data4,data5,data6,data7,data8);
	input clk_1khz,E1U,E2U,E2D,E3U,E3D,E4D;
	output [4:0]data1,data2,data3,data4,data5,data6,data7,data8;
	reg [4:0]data1,data2,data3,data4,data5,data6,data7,data8;
	
	initial	begin
			data8<=5'b10001;
			data6<=5'b10010;
			data4<=5'b10011;
			data2<=5'b10100;
			data1<=5'b00000;
			data3<=5'b00000;
			data5<=5'b00000;
			data7<=5'b00000;
	end
	
	always @ (posedge clk_1khz)
	begin
		if(E1U == 1) 	if(data7[0] == 0)	data7 = data7 + 5'b00001;
		if(E2U == 1)	if(data5[0] == 0)	data5	= data5 + 5'b00001;
		if(E2D == 1)	if(data5[1] == 0)	data5	= data5 + 5'b00010;
		if(E3U == 1)	if(data3[0] == 0)	data3	= data3 + 5'b00001;
		if(E3D == 1)	if(data3[1] == 0)	data3 = data3 + 5'b00010;
		if(E4D == 1)	if(data1[1] == 0)	data1 = data1 + 5'b00010;
			
		if(E1U == 0)	if(data7[0] == 1)	data7 = data7 - 5'b00001;
		if(E2U == 0)	if(data5[0] == 1)	data5 = data5 - 5'b00001;
		if(E2D == 0)	if(data5[1] == 1)	data5 = data5 - 5'b00010;
		if(E3U == 0)	if(data3[0] == 1)	data3 = data3 - 5'b00001;
		if(E3D == 0)	if(data3[1] == 1)	data3 = data3 - 5'b00010;
		if(E4D == 0)	if(data1[1] == 1)	data1 = data1 - 5'b00010;
	end
endmodule
	