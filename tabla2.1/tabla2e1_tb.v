module testbench();

	reg p1, p2, p3, p4, p5, p6, p7, p8;
	wire led1, led2;

	gateLevel   G1(p1, p2, p3, p4, led1);
	operadores OP1(p5, p6, p7, p8, led2);
	
	initial begin
		$display("A B C D | Y");
		$display("--------|--");
		$monitor("%b %b %b %b | %b", p1, p2, p3, p4, led1);
		p1=0; p2=0; p3=0; p4=0;
		#1 p1=0; p2=0; p3=0; p4=1;
		#1 p1=0; p2=0; p3=1; p4=0;
		#1 p1=0; p2=0; p3=1; p4=1;
		#1 p1=0; p2=1; p3=0; p4=0;
		#1 p1=0; p2=1; p3=0; p4=1;
		#1 p1=0; p2=1; p3=1; p4=0;
		#1 p1=0; p2=1; p3=1; p4=1;
		#1 p1=1; p2=0; p3=0; p4=0;
		#1 p1=1; p2=0; p3=0; p4=1;
		#1 p1=1; p2=0; p3=1; p4=0;
		#1 p1=1; p2=0; p3=1; p4=1;
		#1 p1=1; p2=1; p3=0; p4=0;
		#1 p1=1; p2=1; p3=0; p4=1;
		#1 p1=1; p2=1; p3=1; p4=0;
		#1 p1=1; p2=1; p3=1; p4=1;
		
		end 
	
	initial
		#20 $finish;
		
	initial begin
		$dumpfile("tabla2e1_tb.vcd");
		$dumpvars(0, testbench);
		end	

endmodule