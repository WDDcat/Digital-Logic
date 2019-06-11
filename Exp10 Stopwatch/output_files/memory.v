module memory(in1,in2,in4,in5,in7,in8,btn1,btn2,out1,out2,out3,out4,out5,out6,out7,out8,en,rst);
	input [3:0]in1,in2,in4,in5,in7,in8;
	input btn;
	output [3:0]out1,out2,out3,out4,out5,out6,out7,out8;
	output en;
	reg [17:0]t1,t2,t3,t4,t5,t6,t7,t8;
	reg num[2:0] = 3'b001;
	always @ ()
	begin
		if(btn1) 
	end
	always @ (posedge btn2)
	begin
		num = num + 1'b1;
		case(num)
			3'b001:t1 = {in1[3],in1[2],in1[1]in1[0],in2[3],in2[2],in2[1],in2[0],in4[3],in4[2],in4[1],in4[0],in5[3],in5[2],in5[1],in5[0],in7[3],in7[2],in7[1],in7[0],in8[3],in8[2],in8[1],in8[0]};
			3'b010:t2 = {in1[3],in1[2],in1[1]in1[0],in2[3],in2[2],in2[1],in2[0],in4[3],in4[2],in4[1],in4[0],in5[3],in5[2],in5[1],in5[0],in7[3],in7[2],in7[1],in7[0],in8[3],in8[2],in8[1],in8[0]};
		endcase
	end
	
endmodule
	