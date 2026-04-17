`timescale 1ns / 1ps
module clk_divider (
    input clk,
    input rst,
    output reg slow_clk
);

reg [25:0] counter;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        counter <= 0;
        slow_clk <= 0;
    end else begin
        counter <= counter + 1;
        if (counter == 50_000) begin
            slow_clk <= ~slow_clk;
            counter <= 0;
        end
    end
end

endmodule
