module combined_dff_mux_circuit (
    input a,
    input b,
    input s,
    input clk,
    input rst_n,
    output reg q
);

wire mux_out;

assign mux_out = s ? b : a;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        q <= 1'b0;
    end else begin
        q <= mux_out;
    end
end

endmodule