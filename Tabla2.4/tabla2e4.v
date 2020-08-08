module gateLevel(input wire A,B,C, output wire Y);

	wire w1, w3, w4;
	not (w1, A);
	not (w3, C);
	and (w4, w1, w3);
	or(Y, B, w4);
	
endmodule

module operadores(input wire A,B,C, output wire Y);

	assign Y= B | (~A&~C);
	
endmodule