module gateLevel(input wire A, B, C, D, output Y);

	wire w2, w3, w5, w6;
	not (w2, B);
	not (w3, C);
	and (w5, w3, D);
	and (w6, A, w2);
	or (Y, B, w5, w6);

endmodule

module  operadores(input wire A, B, C, D, output Y);

	assign Y= B | (~C&D) | (A&~B);
	
endmodule