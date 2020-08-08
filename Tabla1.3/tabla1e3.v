module gateLevel(input wire A, B, C, D, output Y);

	wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12;
	not(w1, A);
	not(w2, B);
	not(w3, C);
	not(w4, D);
	and(w5, w1, w2, w3, w4);
	and(w6, A, B, w3, w4);
	and(w7, w1, B, w3, D);
	and(w8, A, w2, w3, D);
	and(w9, w1, w2, C, D);
	and(w10, A, B, C, D);
	and(w11, w1, B, C, w4);
	and(w12, A, w2, C, w4);
	or(Y, w5, w6, w7, w8, w9, w10, w11, w12);
	
endmodule

module operadores(input wire A, B, C, D, output Y);

	assign Y=(~A&~B&~C&~D) | (A&B&~C&~D) | (~A&B&~C&D) | (A&~B&~C&D) | (~A&~B&C&D) | (A&B&C&D) |(~A&B&C&~D) | (A&~B&C&~D);

endmodule