module top_module( 
    input [2:0] in,
    output [1:0] out );
    always @(*) begin
        out=2'b0;
        for(int i=0;i<3;i++) begin
            if(in[i])
            out=out+2'b1;
        end
    end
endmodule
