`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2025 16:56:44
// Design Name: 
// Module Name: mux4to2
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


module mux4to1 (
    input wire [3:0] a,
    input wire [1:0] sel,
    output wire y
);
    assign y = (sel == 2'b00) ? a[0] :
               (sel == 2'b01) ? a[1] :
               (sel == 2'b10) ? a[2] :
               a[3];
endmodule
