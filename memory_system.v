`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2026 10:29:48 AM
// Design Name: 
// Module Name: memory_system
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


module memory_system(
        input [7:0] data,
        input store,
        input [1:0] addr,
        output reg [7:0] memory
    );
    reg A, B, C, D;
    reg [7:0] data_reg;
    wire [7:0] out_a;
    wire [7:0] out_b;
    wire [7:0] out_c;
    wire [7:0] out_d;
    
    byte_d_latch latch_1(
        .D(data),
        .E(A),
        .Q(out_a)
    );
    byte_d_latch latch_2(
        .D(data),
        .E(B),
        .Q(out_b)
    );
    byte_d_latch latch_3(
        .D(data),
        .E(C),
        .Q(out_c)
    );
    byte_d_latch latch_4(
        .D(data),
        .E(D),
        .Q(out_d)
    );
    
    always @(*) begin
        // Default output to avoid latches
   

        case (addr)
            2'b00: memory = out_a; // Route to output 0
            2'b01: memory = out_b; // Route to output 1
            2'b10: memory = out_c; // Route to output 2
            2'b11: memory = out_d; // Route to output 3
            default: memory = 8'b0; // Safety for invalid select
        endcase
    end
    
    always @(*) begin 
        case(addr)
            2'b00: {D, C, B, A} <= {1'b0, 1'b0, 1'b0, store}; 
            2'b01: {D, C, B, A} <= {1'b0, 1'b0, store, 1'b0};
            2'b10: {D, C, B, A} <= {1'b0, store, 1'b0, 1'b0};
            2'b11: {D, C, B, A} <= {store, 1'b0, 1'b0, 1'b0};
        endcase
    end
endmodule
