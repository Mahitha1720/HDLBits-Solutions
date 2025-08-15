module FA(
    input x,y,cin,
    output sum,cout);
    
    assign sum=x^y^cin;
    assign cout=(x&y)|(y&cin)|(cin&x);
    
endmodule

module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire cin,c0,c1,c2,c3;
    
    FA FA1(x[0],y[0],cin,sum[0],c0);
    FA FA2(x[1],y[1],c0,sum[1],c1);
    FA FA3(x[2],y[2],c1,sum[2],c2);
    FA FA4(x[3],y[3],c2,sum[3],c3);
    assign sum[4]=(x[3]&y[3])|(y[3]&c3)|(c3&x[3]);
    
endmodule
