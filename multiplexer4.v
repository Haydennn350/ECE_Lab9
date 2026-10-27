	// multiplexer that takes in 4 wire buses
	// each with 4 bits
	// and maps them to a single 4 bit wire bus output

	// its basically a switch that says
	// "hey depending on what number select is (0, 1, 2, 3)
	// make Y = one of the inputs"

`timescale 1ns / 1ps


module multiplexer4 (sel, a, b, c, d, outmux);
    input [1:0] sel;
    input [7:0] a, b, c, d;
    output reg [7:0] outmux;

always @ *
begin
case(sel)
2'b00 : outmux = a;
2'b01 : outmux = b;
2'b10 : outmux = c;
2'b11 : outmux = d;
endcase
end
endmodule