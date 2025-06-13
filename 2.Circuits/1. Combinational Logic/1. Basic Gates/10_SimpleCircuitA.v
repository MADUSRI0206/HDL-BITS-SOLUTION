module top_module (input x, input y, output z);
    wire a;
	assign a=x^y;
    assign z=a&x;
endmodule
