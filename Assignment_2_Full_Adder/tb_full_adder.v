`timescale 1ns / 1ps

module tb_full_adder;

    reg a, b, cin;
    wire sum, cout;

    full_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        a = 0; b = 0; cin = 0;
        #10 a = 0; b = 1; cin = 0;
        #10 a = 1; b = 0; cin = 0;
        #10 a = 1; b = 1; cin = 0;
        #10 a = 0; b = 0; cin = 1;
        #10 a = 0; b = 1; cin = 1;
        #10 a = 1; b = 0; cin = 1;
        #10 a = 1; b = 1; cin = 1;
        #10 $finish;
    end

    initial begin
        $monitor("Time=%0t | a=%b b=%b cin=%b => sum=%b cout=%b", $time, a, b, cin, sum, cout);
    end

endmodule
