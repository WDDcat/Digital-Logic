module FlowLED(clk,reset,out,sel);
	input clk,reset;
	output [6:0]out;
	output sel;
	reg[6:0]out;
	reg[6:0]state;
	parameter S0=0,S1=1,S2=2,S3=3,S4=4,S5=5,S6=6,S7=7,S8=8,S9=9;
	assign sel = 1'b0;
	always @ (state)
	begin
		case(state)
			S0:out = 7'b1111110;
			S1:out = 7'b0110000;
			S2:out = 7'b1101101;
			S3:out = 7'b1111001;
			S4:out = 7'b0110011;
			S5:out = 7'b1011011;
			S6:out = 7'b1011111;
			S7:out = 7'b1110000;
			S8:out = 7'b1111111;
			S9:out = 7'b1111011;
			default:out = 7'b0000000;
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
				S7:state <= S8;
				S8:state <= S9;
				S9:state <= S0;
				default:state <= S0;
			endcase
	end
endmodule
	