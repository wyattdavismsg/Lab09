`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2026 09:32:36 AM
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
    input D, Enable,
    output reg Q,
    output NotQ
    );
    
    always @(D, Enable) begin
        if(Enable & D)
            Q <= 1;
        else if (Enable & ~D)
            Q <= 0;
            
     end
     
     assign NotQ = ~Q;
     
endmodule
