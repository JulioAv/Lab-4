module gateLevel(input wire A, B, C, D, output Y);

	wire w2, w4, w5, w6, w7, w8;
	not(w2, B);
	not(w4, D);
	and(w5, w2, w4);
	and(w6, B, D);
	and(w7, A, B);
	and(w8, A, C);
	or(Y, w5, w6, w7, w8);
	
endmodule

module operadores(input wire A, B, C, D, output Y);

	assign Y=(~B&~D) | (B&D) | (A&B) | (A&C);

endmodule