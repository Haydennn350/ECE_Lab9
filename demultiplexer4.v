	// go look at the multiplexer4 to understand how this works
	// its basically a reversed version of it
	// maps one input to one of 4 outputs depending on what
	// output_to_select is set to (00, 01, 10, 11)

`timescale 1ns / 1ps


// Multiplexer using case statement
module demultiplexer4(
    input din,       // Data input
    input [1:0] sel,       // 2-bit select input
    output reg  [7:0] dout       // 4-bit output
);

    always @(*) begin
        // Default output to avoid latches
        dout = 8'b0;

        case (sel)
            2'b00: dout[0] = din; // Route to output 0
            2'b01: dout[1] = din; // Route to output 1
            2'b10: dout[2] = din; // Route to output 2
            2'b11: dout[3] = din; // Route to output 3
            default: dout = 8'b0; // Safety for invalid select
        endcase
    end

endmodule