`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2026 10:28:39 AM
// Design Name: 
// Module Name: d_latch_8_bit
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


module d_latch_8_bit(
    input [7:0]D,
    input enable,
    output reg [7:0]Q
    );
    
    always @(D, enable) begin
        if(enable)
            Q = D;
            
    end
    
endmodule
