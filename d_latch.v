`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2026 09:50:55 AM
// Design Name: 
// Module Name: d_latch
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


module d_latch(
    input D, E,
    output reg Q, 
    output NotQ
    );
    
    always @(*) begin
        if (E) begin
            Q = D;
        end else begin
            Q = Q;
        end
    end
    assign NotQ = ~Q;
    
endmodule
