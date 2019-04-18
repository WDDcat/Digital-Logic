module LEDDecoder(stop,head,Co00,Co01,Co02,Co03,Co04,Co05,Co06,Co07);
	input stop,head;
	output [7:0] Co00,Co01,Co02,Co03,Co04,Co05,Co06,Co07;
	reg [7:0] Co00,Co01,Co02,Co03,Co04,Co05,Co06,Co07;
	always @ (*)
	begin
		if(stop)	begin
				Co00 = 8'b0000_0000;
				Co01 = 8'b0001_1000;
				Co02 = 8'b0001_1000;
				Co03 = 8'b0001_1000;
				Co04 = 8'b0001_1000;
				Co05 = 8'b0001_1000;
				Co06 = 8'b0001_1000;
				Co07 = 8'b0000_0000;
		end
		else
		case(head)
		1'b1:	begin
				Co00 = 8'b0000_0000;
				Co01 = 8'b0000_1100;
				Co02 = 8'b0000_0110;
				Co03 = 8'b0111_1111;
				Co04 = 8'b0111_1111;
				Co05 = 8'b0000_0110;
				Co06 = 8'b0000_1100;
				Co07 = 8'b0000_0000;
		end
		1'b0:	begin
				Co00 = 8'b0000_0000;
				Co01 = 8'b0011_0000;
				Co02 = 8'b0110_0000;
				Co03 = 8'b1111_1110;
				Co04 = 8'b1111_1110;
				Co05 = 8'b0110_0000;
				Co06 = 8'b0011_0000;
				Co07 = 8'b0000_0000;
		end
		endcase
	end
endmodule
