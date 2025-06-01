module testbench_combined_dff_mux_circuit;

    reg a;
    reg b;
    reg s;
    reg clk;
    reg rst_n;
    wire q;

    combined_dff_mux_circuit UUT (
        .a(a),
        .b(b),
        .s(s),
        .clk(clk),
        .rst_n(rst_n),
        .q(q)
    );

    parameter CLK_PERIOD = 10;
    initial begin
        clk = 0;
        forever #(CLK_PERIOD/2) clk = ~clk;
    end

    initial begin
        a = 0;
        b = 0;
        s = 0;
        rst_n = 0;

        #CLK_PERIOD;
        rst_n = 1;

        #CLK_PERIOD;
        a = 1; b = 0; s = 0;
        #CLK_PERIOD;

        #CLK_PERIOD;
        a = 0; b = 1; s = 0;
        #CLK_PERIOD;

        #CLK_PERIOD;
        a = 1; b = 1; s = 1;
        #CLK_PERIOD;

        #CLK_PERIOD;
        a = 0; b = 0; s = 1;
        #CLK_PERIOD;

        #CLK_PERIOD;
        a = 1; b = 0; s = 1;
        #CLK_PERIOD;

        #CLK_PERIOD;
        a = 0; b = 1; s = 0;
        #CLK_PERIOD;

        #CLK_PERIOD;
        a = 1; b = 1; s = 1;
        rst_n = 0;
        #5;

        #CLK_PERIOD;
        $finish;
    end

endmodule