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
