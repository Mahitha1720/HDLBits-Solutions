module top_module( 
    input [99:0] in,
    output [99:0] out
);
    always @(*) begin
        integer i;
        for(i=0;i<100;i=i+1)
                out[99-i]=in[i];
    end

endmodule
