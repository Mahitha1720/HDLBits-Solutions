//Description:Build a combinational circuit that splits an input half-word

module top_module( 
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo );
    assign out_hi[7:0]=in[15:8];
    assign out_lo[7:0]=in[7:0];
endmodule
