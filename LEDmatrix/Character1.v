module Character1(en,Co00,Co01,Co02,Co03,Co04,Co05,Co06,Co07,Co08,Co09,Co10,Co11,Co12,Co13,Co14,Co15);
	input en;
	output [15:0] Co00,Co01,Co02,Co03,Co04,Co05,Co06,Co07,Co08,Co09,Co10,Co11,Co12,Co13,Co14,Co15;
	assign Co00 = 16'b0000_0000_0000_0000;
	assign Co01 = 16'b0000_0000_0000_0000;
	assign Co02 = 16'b0000_0000_0000_0000;
	assign Co03 = 16'b0011_0000_0000_1100;
	
	assign Co04 = 16'b0011_0000_0000_1100;
	assign Co05 = 16'b0011_0001_1000_1100;
	assign Co06 = 16'b0011_0001_1000_1100;
	assign Co07 = 16'b0011_1111_1111_1100;
	
	assign Co08 = 16'b0011_1111_1000_1100;
	assign Co09 = 16'b0011_0001_1000_1100;
	assign Co10 = 16'b0011_0001_1000_1100;
	assign Co11 = 16'b0011_0000_0000_1100;
	
	assign Co12 = 16'b0011_0000_0000_1100;
	assign Co13 = 16'b0000_0000_0000_0000;
	assign Co14 = 16'b0000_0000_0000_0000;
	assign Co15 = 16'b0000_0000_0000_0000;
//inclockvise 90degree
endmodule
