module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );

    genvar i;
    assign sum[0]=a[0]^b[0]^cin;
    assign cout[0]=(a[0]&b[0])|(b[0]&cin)|(a[0]&cin);
    generate
        for(i=1;i<100;i++) begin:FA
           assign sum[i]=a[i]^b[i]^cout[i-1];
           assign cout[i]=(a[i]&b[i])|(b[i]&cout[i-1])|(a[i]&cout[i-1]);
        end
    endgenerate
     
endmodule
