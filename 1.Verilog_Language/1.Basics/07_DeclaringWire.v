module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    wire t1,t2;
    and a1(t1,a,b);
    and a2(t2,c,d);
    or o1(out,t1,t2);
    not n1(out_n,out);

endmodule
