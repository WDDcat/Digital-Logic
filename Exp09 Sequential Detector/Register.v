module Register(datain,dataout,en,in,out);
	input [7:0]datain;
	output [7:0]dataout;
	input en,in,out;
	reg [7:0]dataout,temp;
	
	always @ (en)
	begin
		if(in == 1) temp = datain;
		else if(out == 1) dataout = temp;
	end
endmodule

	