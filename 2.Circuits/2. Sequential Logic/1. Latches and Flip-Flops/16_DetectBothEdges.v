module top_module (
    input clk,
    input [7:0] in,
    output [7:0] anyedge
);
    reg [7:0] x;
    always@(posedge clk) begin
        x<=in;
        anyedge<=x^in;
    end

endmodule
