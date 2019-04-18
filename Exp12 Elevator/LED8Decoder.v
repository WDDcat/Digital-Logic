module LED8Decoder(sel,Co08,Co09,Co10,Co11,Co12,Co13,Co14,Co15);
	input [1:0]sel;
	output [7:0] Co08,Co09,Co10,Co11,Co12,Co13,Co14,Co15;
	reg [7:0] Co08,Co09,Co10,Co11,Co12,Co13,Co14,Co15;
	always @ (*)
	begin
		case(sel)
			2'b00:	begin	//display "1"
				Co08 = 8'b0000_0000;
				Co09 = 8'b0000_0000;
				Co10 = 8'b0000_0000;
				Co11 = 8'b0000_0100;
				Co12 = 8'b1111_1110;
				Co13 = 8'b0000_0000;
				Co14 = 8'b0000_0000;
				Co15 = 8'b0000_0000;
			end
			2'b01:	begin //display "2"
				Co08 = 8'b0000_0000;
				Co09 = 8'b0000_0000;
				Co10 = 8'b1000_0100;
				Co11 = 8'b1100_0010;
				Co12 = 8'b1010_0010;
				Co13 = 8'b1001_0010;
				Co14 = 8'b1000_1100;
				Co15 = 8'b0000_0000;
			end
			2'b10:	begin //display "3"
				Co08 = 8'b0000_0000;
				Co09 = 8'b0000_0000;
				Co10 = 8'b0100_0100;
				Co11 = 8'b1000_0010;
				Co12 = 8'b1001_0010;
				Co13 = 8'b1001_0010;
				Co14 = 8'b0110_1100;
				Co15 = 8'b0000_0000;
			end
			2'b11:	begin //display "4"
				Co08 = 8'b0000_0000;
				Co09 = 8'b0000_0000;
				Co10 = 8'b0011_0000;
				Co11 = 8'b0010_1000;
				Co12 = 8'b0010_0100;
				Co13 = 8'b1111_1110;
				Co14 = 8'b0010_0000;
				Co15 = 8'b0000_0000;
			end
			default:	begin //no display
				Co08 = 8'b1111_1111;
				Co09 = 8'b1111_1111;
				Co10 = 8'b1111_1111;
				Co11 = 8'b1111_1111;	
				Co12 = 8'b1111_1111;
				Co13 = 8'b1111_1111;
				Co14 = 8'b1111_1111;
				Co15 = 8'b1111_1111;
			end
		endcase
	end
endmodule
