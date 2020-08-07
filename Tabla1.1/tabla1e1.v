module gateLevel(input wire A,B,C, output wire Y);
	
	wire w1, w2, w3, w4, w5, w6;
	
	not (w1, A);
	not (w2, B);
	not (w3, C);
	and (w4, w1, w3);
	and (w5, A, C);
	and (w6, A, w2);
	or (Y, w4, w5, w6);
	


endmodule

module operadores (input wire A, B, C, output wire Y);

	assign Y=(~A&~C) | (A&C) | (A&~B);
	
endmodule