module Seven_Segment_Display(data,a,b,c,d,e,f,g,h);
	input [4:0]data;
	output a,b,c,d,e,f,g,h;
	reg a,b,c,d,e,f,g,h;
	always@(data)
	begin
		case(data)
			5'b10000:{a,b,c,d,e,f,g,h} = 8'b11111100;
			5'b10001:{a,b,c,d,e,f,g,h} = 8'b01100000;
			5'b10010:{a,b,c,d,e,f,g,h} = 8'b11011010;
			5'b10011:{a,b,c,d,e,f,g,h} = 8'b11110010;
			5'b10100:{a,b,c,d,e,f,g,h} = 8'b01100110;
			5'b10101:{a,b,c,d,e,f,g,h} = 8'b10110110;
			5'b10110:{a,b,c,d,e,f,g,h} = 8'b10111110;
			5'b10111:{a,b,c,d,e,f,g,h} = 8'b11100000;
			5'b11000:{a,b,c,d,e,f,g,h} = 8'b11111110;
			5'b11001:{a,b,c,d,e,f,g,h} = 8'b11110110;
			5'b11010:{a,b,c,d,e,f,g,h} = 8'b11101110;
			5'b11011:{a,b,c,d,e,f,g,h} = 8'b00111110;
			5'b11100:{a,b,c,d,e,f,g,h} = 8'b10011100;
			5'b11101:{a,b,c,d,e,f,g,h} = 8'b01111010;
			5'b11110:{a,b,c,d,e,f,g,h} = 8'b10011110;
			5'b11111:{a,b,c,d,e,f,g,h} = 8'b10001110;
			5'b00000:{a,b,c,d,e,f,g,h} = 8'b00000000;
			5'b00001:{a,b,c,d,e,f,g,h} = 8'b11000000;
			5'b00010:{a,b,c,d,e,f,g,h} = 8'b00011000;
			5'b00011:{a,b,c,d,e,f,g,h} = 8'b11011000;
			default:{a,b,c,d,e,f,g,h} = 8'b00000000;
		endcase
	end
endmodule

//00001:	shang
//00010:	xia
//00011:	shang&xia
