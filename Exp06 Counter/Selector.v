module Selector(select,in5,in6,out,en);
	input [2:0] select;
	input [3:0] in5,in6;
	input en;
	output [3:0] out;
	reg [3:0] out;
	parameter in1=4'b0000,in2=4'b0010,in3=4'b0001,in4=4'b0000;
	always @ (select)
	begin
		if(en)
			case(select)
				3'b000:out = in1;
				3'b001:out = in2;
				3'b010:out = in3;
				3'b011:out = in4;
				3'b100:out = in5;
				3'b101:out = in6;
				default:out = 4'b1111;
			endcase
		else if(!en)
			out = 4'bxxxx;
	end
endmodule


//yinjiaofenpei P48