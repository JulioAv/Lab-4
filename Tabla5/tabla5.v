module gateLevel(input wire A,B,C, output wire Y);

	wire w1, w2;
	and (w1, A, C);
	and (w2, A, B);
	or (Y, w1, w2);

endmodule

module operadores(input wire A,B,C, output wire Y);

	assign Y= (A&C) | (A&B);
	
endmodule


