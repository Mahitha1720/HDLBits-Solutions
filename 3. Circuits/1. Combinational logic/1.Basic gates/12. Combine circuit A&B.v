module A(input x,y, output z);
    assign z=(x^y)&x;
endmodule

module B(input x,y,output z);
    assign z=(x~^y);
endmodule


module top_module (input x, input y, output z);
wire w0,w1,w2,w3;
    A IA1(x,y,w0);
    A IA2(x,y,w2);
    B IB1(x,y,w1);
    B IB2(x,y,w3);
    
    assign z=(w0|w1)^(w2&w3);

endmodule
