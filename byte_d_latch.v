`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2026 10:10:11 AM
// Design Name: 
// Module Name: byte_d_latch
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


module byte_d_latch(
    input [7:0] D, 
    input E,
    output reg [7:0] Q, 
    output [7:0] NotQ
    );
    
    always @(E) begin
        if (E) begin
            Q = D;
        end else begin
            Q = Q;
        end
    end
    assign NotQ = ~Q;
    
endmodule

