`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2023 04:11:42 PM
// Design Name: 
// Module Name: test_fulladder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test_fulladder();
    reg a,b,c;
    wire sumPOS, carryPOS;
    
    POS_fullAdder ckt (a,b,c,sumPOS,carryPOS);
    SOP_fullAdder ckt2 (a,b,c,sumSOP,carrySOP);
    initial 
    begin
    a = 1'b0;
	b = 1'b0;
	c = 1'b1;
	#100
	a = 1'b0;
	b = 1'b1;
	c = 1'b0;
	#100
	a = 1'b0;
	b = 1'b1;
	c = 1'b1;
	#100
	a = 1'b1;
	b = 1'b0;
	c = 1'b0;
	#100
	a = 1'b1;
	b = 1'b0;
	c = 1'b1;
	#100
	a = 1'b1;
	b = 1'b1;
	c = 1'b0;
	#100
	a = 1'b1;
	b = 1'b1;
	c = 1'b1;
    end
endmodule
