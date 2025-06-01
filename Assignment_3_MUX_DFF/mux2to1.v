`timescale 1ns / 1ps

module mux2to1 (
    input wire a, b,
    input wire sel,
    output wire y
);
    assign y = (sel == 1'b0) ? a : b;
endmodule
