module FlowLED(clk,reset,out,sel);
	input clk,reset;
	output [7:0]out;
	output sel;
	reg[7:0]out;
	reg[7:0]state;
	parameter S0=0,S1=1,S2=2,S3=3,S4=4,S5=5,S6=6,S7=7;
	assign sel = 1'b0;
	always @ (state)
	begin
		case(state)
			S0:out = 8'b11111110;
			S1:out = 8'b11111101;
			S2:out = 8'b11111011;
			S3:out = 8'b11110111;
			S4:out = 8'b11101111;
			S5:out = 8'b11011111;
			S6:out = 8'b10111111;
			S7:out = 8'b01111111;
			default:out = 8'b00000000;
		endcase
	end
	always @ (posedge clk)
	begin
		if(!reset) state <= S0;
		else
			case(state)
				S0:state <= S1;
				S1:state <= S2;
				S2:state <= S3;
				S3:state <= S4;
				S4:state <= S5;
				S5:state <= S6;
				S6:state <= S7;
				S7:state <= S0;
				default:state <= S0;
			endcase
	end
endmodule
	