module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0]s0,s1;
    wire c1,c0;
    
    add16 a0(.a(a[15:0]),.b(b[15:0]),.cin(0),.sum(s0),.cout(c0));
    add16 a1(.a(a[31:16]),.b(b[31:16]),.cin(c0),.sum(s1),.cout(c1));
             
    assign sum={s1,s0};

endmodule
