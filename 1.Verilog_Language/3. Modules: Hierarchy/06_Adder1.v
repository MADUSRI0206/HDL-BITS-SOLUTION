module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire y;
    reg x=0;
    
    add16 dut1(.a(a[15:0]),.b(b[15:0]),.sum(sum[15:0]),.cin(x),.cout(y));
    add16 dut2(.a(a[31:16]),.b(b[31:16]),.sum(sum[31:16]),.cin(y)); 
  
endmodule
