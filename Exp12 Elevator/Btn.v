module Btn(rst,B1U,B2U,B2D,B3U,B3D,B4D,B1,B2,B3,B4,E1U,E2U,E2D,E3U,E3D,E4D,E1,E2,E3,E4,position,head,empty);
	input rst,B1U,B2U,B2D,B3U,B3D,B4D,B1,B2,B3,B4;
	input head,empty;
	input [1:0]position;
	output E1U,E2U,E2D,E3U,E3D,E4D,E1,E2,E3,E4;
	reg E1U,E2U,E2D,E3U,E3D,E4D,E1,E2,E3,E4;
	always @ (*)	begin
	if(rst)	begin
		E1U = 1'b0;
		E2U = 1'b0;
		E2D = 1'b0;
		E3U = 1'b0;
		E3D = 1'b0;
		E4D = 1'b0;
		E1 = 1'b0;
		E2 = 1'b0;
		E3 = 1'b0;
		E4 = 1'b0;
	end
	else begin
		if(B1U == 0)	
			if(position != 2'b00)	E1U = 1'b1;
		if(B2U == 0)	
			if(position != 2'b01)	E2U = 1'b1;
			else	if(head == 1'b0)	E2U = 1'b1;
		if(B2D == 0)
			if(position != 2'b01)	E2D = 1'b1;
			else	if(head == 1'b1)	E2D = 1'b1;
		if(B3U == 0)	
			if(position != 2'b10)	E3U = 1'b1;
			else	if(head == 1'b0)	E3U = 1'b1;
		if(B3D == 0)
			if(position != 2'b10)	E3D = 1'b1;
			else	if(head == 1'b1)	E3D = 1'b1;
		if(B4D == 0)	
			if(position != 2'b11) 	E4D = 1'b1;
			
		if(B1 == 0)
			if(position != 2'b00)	E1 = 1'b1;
		if(B2 == 0)
			if(position != 2'b01)	E2 = 1'b1;
		if(B3 == 0)
			if(position != 2'b10)	E3 = 1'b1;
		if(B4 == 0)
			if(position != 2'b11)	E4 = 1'b1;
			
		case(position)
			2'b00:	begin
				E1 = 1'b0;
				E1U = 1'b0;
			end
			2'b01:	begin
				E2 = 1'b0;
				if(head == 1'b1)	
					if(empty==0)	E2U = 1'b0;
					else if(empty==1)	E2D = 1'b0;
				if(head == 1'b0)
					if(empty==0)	E2D = 1'b0;
					else if(empty==1)	E2U = 1'b0;
			end
			2'b10:	begin
				E3 = 1'b0;
				if(head == 1'b1)						
					if(empty==0)	E3U = 1'b0;
					else if(empty==1)	E3D = 1'b0;
				if(head == 1'b0)
					if(empty==0)	E2D = 1'b0;
					else if(empty==1)	E2U = 1'b0;
			end
			2'b11:	begin
				E4 = 1'b0;
				E4D = 1'b0;
			end
		endcase
	end
	end
endmodule
