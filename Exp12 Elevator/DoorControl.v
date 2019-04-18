module DoorControl(rst,clk_1khz,clk_10hz,D,Door,Doorclose,B1U,B2U,B2D,B3U,B3D,B4D,B1,B2,B3,B4);
	input rst,clk_1khz,clk_10hz,Door;
	input B1U,B2U,B2D,B3U,B3D,B4D,B1,B2,B3,B4;
	output DoorClose;
	output [7:0]D;
	reg [7:0]D;
	reg DoorClose,DoorOpen;
	reg DO,DC;
	
	always @ (posedge clk_1khz)
	begin
		if(rst)	begin
			DC = 1'b1;
			DO = 1'b0;
		end
		else	begin
			if(Door == 0)	begin
				DC = 1'b1;
				DO = 1'b0;
			end
			if(Door == 1)	begin
				DO = 1'b1;
				DC = 1'b0;
			end
		end
	end
	
	always @ (posedge clk_10hz)
	begin
		if(rst)	begin
			D=8'b11111111;
			DoorClose=1'b1;
		end
		else	begin
			if(DO == 1'b1)	begin
				DoorClose = 1'b0;
				case(D)
					8'b11111111:D=8'b11100111;
					8'b11100111:D=8'b11000011;
					8'b11000011:D=8'b10000001;
					8'b10000001:D=8'b00000000;
					8'b00000000:count=0;
					default:D=D;
				endcase
			end
			else if(DC == 1'b1)	begin
				case(D)
					8'b00000000:D=8'b10000001;
					8'b10000001:D=8'b11000011;
					8'b11000011:D=8'b11100111;
					8'b11100111:D=8'b11111111;
					8'b11111111:DoorClose=1'b1;
					default:D=D;
				endcase
			end
		end
	end
endmodule
