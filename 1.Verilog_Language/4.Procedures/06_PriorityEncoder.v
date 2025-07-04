module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
    always @(*) begin
        case(in)
        4'b0000:pos=4'd0;
        4'b0001:pos=4'd0;
        4'b0010:pos=4'd1;
        4'b0011:pos=4'd0;
        4'b0100:pos=4'd2;
        4'b0101:pos=4'd0;
        4'b0110:pos=4'd1;
        4'b0111:pos=4'd0;
        4'b1000:pos=4'd3;
        4'b1001:pos=4'd0;
        4'b1010:pos=4'd1;
        4'b1011:pos=4'd0;
        4'b1100:pos=4'd2;
        4'b1101:pos=4'd0;
        4'b1110:pos=4'd1;
        4'b1111:pos=4'd0;
            default:pos=0;
        endcase
    end
endmodule
