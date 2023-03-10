module test_halfadder();
reg a,b;
wire sum,carry;

halfAdder ckt(a,b,sum,carry);
initial
begin
    a = 1'b0;
	b = 1'b0;
	#100
	a = 1'b1; 
	b = 1'b0;
	#100
	a = 1'b0; 
	b = 1'b1;
	#100
	a = 1'b1; 
	b = 1'b1;

end
endmodule