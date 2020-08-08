module gateLevel(input wire A, B, C, output Y);

	wire w1;
	not(w1, B);
	or(Y, w1, C);

endmodule

module operadores(input wire A, B, C, output Y);

	assign Y=(~B|C);
	
endmodule