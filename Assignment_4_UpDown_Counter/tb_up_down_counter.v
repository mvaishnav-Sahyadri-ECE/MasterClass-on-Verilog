`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2025 17:24:47
// Design Name: 
// Module Name: tb_up_down_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
`timescale 1ns / 1ps

module tb_up_down_counter;

    reg clk;
    reg reset;
    reg up_down;
    wire [3:0] count;

    up_down_counter uut (
        .clk(clk),
        .reset(reset),
        .up_down(up_down),
        .count(count)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1; up_down = 1;
        #10 reset = 0;
        #50 up_down = 0;
        #50 reset = 1;
        #10 reset = 0;
        #30 $finish;
    end

    initial begin
        $monitor("Time=%0t | up_down=%b reset=%b => count=%d", $time, up_down, reset, count);
    end

endmodule
