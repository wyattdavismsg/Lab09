`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2026 09:40:19 AM
// Design Name: 
// Module Name: top
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


module top(
    input [15:0]sw,
    input btnC,
    output [15:0]led
    );
    wire en0;
    wire en1;
    wire en2;
    wire en3;
    
    wire [7:0] byte_0_in;
    wire [7:0] byte_1_in;
    wire [7:0] byte_2_in;
    wire [7:0] byte_3_in;
    
    wire [7:0] byte_0_out;
    wire [7:0] byte_1_out;
    wire [7:0] byte_2_out;
    wire [7:0] byte_3_out;
    
    d_latch a_inst (
    
        .D(sw[0]),
        .Enable(btnC),
        .Q(led[0]),
        .NotQ(led[1])
        
    );
    
    enable_demux f_inst (
        .sel(sw[7:6]),
        .btnC(btnC),
        .en0(en0),
        .en1(en1),
        .en2(en2),
        .en3(en3)
     );
    
    demux_8_bit b_inst (
        
        .data(sw[15:8]),
        .sel(sw[7:6]),
        .A(byte_0_in),
        .B(byte_1_in),
        .C(byte_2_in),
        .D(byte_3_in)
        
        
     );
     
     d_latch_8_bit byte_num_0 (
     
        .D(byte_0_in),
        .enable(en0),
        .Q(byte_0_out)
        
     );
     
     d_latch_8_bit byte_num_1 (
     
        .D(byte_1_in),
        .enable(en1),
        .Q(byte_1_out)
        
     );
     
     d_latch_8_bit byte_num_2 (
     
        .D(byte_2_in),
        .enable(en2),
        .Q(byte_2_out)
        
     );
     
     d_latch_8_bit byte_num_3 (
     
        .D(byte_3_in),
        .enable(en3),
        .Q(byte_3_out)
        
     );
     
     mux_8_bit c_inst (
        
        .A(byte_0_out),
        .B(byte_1_out),
        .C(byte_2_out),
        .D(byte_3_out),
        .sel(sw[7:6]),
        .Y(led[15:8])
        
     );
    
endmodule
