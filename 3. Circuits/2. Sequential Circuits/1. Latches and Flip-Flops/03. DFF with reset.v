module top_module (
    input clk,
    input reset,            // Synchronous reset
    input [7:0] d,
    output reg [7:0] q      // Declare as reg since assigned in always
);

    always @(posedge clk) begin
        if (reset)
            q <= 8'b0;      // Clear q when reset is active
        else
            q <= d;         // Store d when reset is not active
    end

endmodule
