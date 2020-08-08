module gateLevel(input wire A, B, C, output wire Y);

	
	
	not(Y, B);
	
endmodule

module operadores(input wire A, B, C, output wire Y);

	assign Y=(~B);


endmodule