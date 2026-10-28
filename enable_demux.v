`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2026 11:21:37 AM
// Design Name: 
// Module Name: enable_demux
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


module enable_demux(
    input [1:0] sel,
    input btnC,
    output reg en0,
    output reg en1,
    output reg en2,
    output reg en3
    );


    always @(*) begin
        en0 = 0;
        en1 = 0;
        en2 = 0;
        en3 = 0;
       
        case(sel)
            2'b00: en0 = btnC;
            2'b01: en1 = btnC;
            2'b10: en2 = btnC;
            2'b11: en3 = btnC;
        endcase
    end


endmodule

