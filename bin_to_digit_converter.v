`timescale 1ns / 1ps
module bin_to_digit_converter (
    input wire [7:0] bin,
    output reg [3:0] d0, d1, d2, d3
);

always @(*) begin
    d0 = bin % 10;
    d1 = (bin / 10) % 10;
    d2 = (bin / 100) % 10;
    d3 = (bin / 1000) % 10;
end

endmodule
