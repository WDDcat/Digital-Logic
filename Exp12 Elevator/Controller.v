module Controller(clk_1khz,E1U,E2U,E2D,E3U,E3D,E4D,E1,E2,E3,E4,stop,head,position,empty);
	input clk_1khz,E1U,E2U,E2D,E3U,E3D,E4D,E1,E2,E3,E4;
	input [1:0]position;
	output stop,head,empty;
	reg head;
	reg stop;
	reg empty;
	
	initial	begin
		head = 1'b1;
		stop = 1'b1;
		empty = 1'b1;
	end
	
	always @ (*)
	begin
		case(position)
			2'b00:	begin
				head = 1'b1;
				if(E1 || E1U)	begin	empty=1'b0;stop = 1'b1;	end
				else if(E2 || E3 || E4 || E2U || E2D || E3U || E3D || E4D)	begin	empty=1'b0;stop = 1'b0;	end
				else	begin	empty=1'b1;stop = 1'b1;	end
			end
			2'b01:	begin
				if(head == 1'b1)
					if(E2 || E2U)	begin	empty=1'b0;stop = 1'b1;	end
					else if(E3 || E4 || E3U || E3D || E4D)	begin	empty=1'b0;stop = 1'b0;	end
					else if(E2D)	begin	empty=1'b0;stop=1'b1;	end
					else if(E1 || E1U)	begin empty=1'b0;stop=1'b0;head=1'b0;	end
					else	begin	empty=1'b1;stop = 1'b1;	end
				else if(head == 1'b0)
					if(E2 || E2D)	begin	empty=1'b0;stop = 1'b1;	end
					else if(E1 || E1U)	begin	empty=1'b0;stop=1'b0;	end
					else if(E2U)	begin	empty=1'b0;stop=1'b1;	end
					else if(E3 || E4 || E3U || E3D || E4D)	begin empty=1'b0;stop=1'b0;head=1'b1;	end
					else	begin	empty=1'b1;stop = 1'b1;	end
			end
			2'b10:	begin
				if(head == 1'b1)
					if(E3 || E3U)	begin	empty=1'b0;stop = 1'b1;	end
					else if(E4 || E4D) begin	empty=1'b0;stop=1'b0;	end
					else if(E3D)	begin	empty=1'b0;stop=1'b1;	end
					else if(E1 || E2 || E1U || E2U || E2D)	begin empty=1'b0;stop=1'b0;head=1'b0;end
					else	begin	empty=1'b1;stop = 1'b1;	end
					else if(head == 1'b0)
					if(E3 || E3D)	begin	empty=1'b0;stop = 1'b1;	end
					else if(E1 || E2 || E1U || E2U || E2D)	begin	empty=1'b0;stop=1'b0;	end
					else if(E3U)	begin	empty=1'b0;stop=1'b1;	end
					else if(E4 || E4D) begin empty=1'b0;stop=1'b0;head=1'b1;end
					else	begin	empty=1'b1;stop = 1'b1;	end
				end
			2'b11:	begin
				head = 1'b0;
				if(E4 || E4D)	begin	empty=1'b0;stop = 1'b1;	end
				else if(E1 || E2 || E3 || E1U || E2U || E2D || E3U || E3D)	begin	empty=1'b0;stop=1'b0;	end
				else	begin	empty=1'b1;stop = 1'b1;	end
			end
		endcase
	end
endmodule

