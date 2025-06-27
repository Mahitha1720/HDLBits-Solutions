//Description: Implementing the given circuit of 7458 by declaring wires and using gate-level modelling

module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
wire m,a,h,i;
    assign m=p1a&p1b&p1c;
    assign a=p1d&p1e&p1f;
    assign p1y=m|a;
    assign h=p2a&p2b;
    assign i=p2c&p2d;
    assign p2y=h|i;

endmodule
