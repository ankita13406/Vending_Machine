`timescale 1ns / 1ps
module tdm_digit_select (
    input wire clk,
    input wire rst,
    input wire [3:0] d0, d1, d2, d3,
    output reg [3:0] digit,
    output reg [3:0] an
);

reg [1:0] digit_select;
reg [16:0] digit_timer;

always @(posedge clk or posedge rst) begin
    if(rst)
        digit_timer <= 0;
    else if(digit_timer == 49_999)
        digit_timer <= 0;
    else
        digit_timer <= digit_timer + 1;
end                

always @(posedge clk or posedge rst) begin
    if(rst)
        digit_select <= 0;
    else if(digit_timer == 49_999)
        digit_select <= digit_select + 1;
end

always @(*) begin
    case (digit_select)
        2'b00: begin an = 4'b1110; digit = d0; end
        2'b01: begin an = 4'b1101; digit = d1; end
        2'b10: begin an = 4'b1011; digit = d2; end
        2'b11: begin an = 4'b0111; digit = d3; end
        default: begin an = 4'b1111; digit = 4'b0000; end
    endcase
end

endmodule
