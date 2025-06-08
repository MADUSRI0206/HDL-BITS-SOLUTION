module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire x,y,z,cout1,cout2,cout3;
    wire [15:0]sum1,sum2,sum3,sum_mux;
    assign x=0;
    assign y=0;
    assign z=1;
    add16(.a(a[15:0]),.b(b[15:0]),.cin(x),.cout(cout1),.sum(sum1));
    add16(.a(a[31:16]),.b(b[31:16]),.cin(y),.cout(cout2),.sum(sum2));
    add16(.a(a[31:16]),.b(b[31:16]),.cin(z),.cout(cout3),.sum(sum3));
    assign sum={sum_mux,sum1};
    always @(*)begin
        case(cout1)
        1'b0:sum_mux<=sum2;
        1'b1:sum_mux<=sum3;
        endcase
    end
    
endmodule
