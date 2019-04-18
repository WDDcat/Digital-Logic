module Move(rst,clk_1hz,DoorClose,stop,head,Door,position);
	input rst,stop,head,clk_1hz;
	output [1:0]position;
	output Door;
	input DoorClose;
	reg [1:0]position;
	reg Door;
	reg count;
	reg clk;
	
	always @ (posedge clk_1hz)
	begin
		if(count == 1'b1)	begin
			count = 2'b0;
			clk = ~clk;
		end
		else count = count + 1'b1;
	end
	
	always @ (posedge clk)
	begin
		if(rst)	begin
			position = 2'b00;
			Door = 1'b0;
		end
		else	begin
			if(stop == 1'b1) Door = 1'b1;
			else if(stop == 1'b0)	begin
				if(DoorClose == 0)	Door = 1'b1;
				else if(DoorClose == 1)	begin
					Door = 1'b0;
					if(head == 1'b1)	position = position + 1'b1;
					else if(head == 1'b0)	position = position - 1'b1;
				end
			end
		end
	end
endmodule
