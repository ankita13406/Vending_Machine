`timescale 1ns / 1ps
module edge_detect (
    input clk,
    input signal,
    output reg pulse
);

reg prev;

always @(posedge clk) begin
    pulse <= signal & ~prev;
    prev <= signal;
end

endmodule
