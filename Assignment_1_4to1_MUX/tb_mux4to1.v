`timescale 1ns / 1ps

module tb_mux4to1;

    reg [3:0] a;
    reg [1:0] sel;
    wire y;

    mux4to1 uut (
        .a(a),
        .sel(sel),
        .y(y)
    );

    initial begin
        a = 4'b0000; sel = 2'b00;
        #10 a = 4'b1101; sel = 2'b00;
        #10 sel = 2'b01;
        #10 sel = 2'b10;
        #10 sel = 2'b11;
        #10 a = 4'b0100; sel = 2'b10;
        #10 sel = 2'b00;
        #10 $finish;
    end

    initial begin
        $monitor("Time=%0t | a=%b | sel=%b | y=%b", $time, a, sel, y);
    end

endmodule


