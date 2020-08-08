module gateLevel(input wire A, B, C, D, output Y);

	wire w2, w3, w4, w5, w6, w7, w8;
	not (w2, B);
	not (w3, C);
	not (w4, D);
	and (w5, w2, w3, w4);
	and (w6, A, w3);
	and (w7, A, w2);
	and (w8, A, C, w4);
	or (Y, w5, w6, w7, w8);
	
endmodule

module operadores(input wire A, B, C, D, output Y);

	assign Y=(~B&~C&~D) | (A&~C) | (A&~B) | (A&C&~D);
	
endmodule