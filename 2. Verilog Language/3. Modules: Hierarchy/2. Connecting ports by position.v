// Description: connect the 6 ports by position (output1,output2,in1,in2,in3,in4)

module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);
    mod_a m1(out1,out2,a,b,c,d);
  
endmodule
