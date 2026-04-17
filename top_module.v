`timescale 1ns / 1ps
module top_module(
input clk, rst, buy, coin, pq, go,
input [1:0] s1s2,
output [6:0] seg0, seg1,
output [3:0] an0, an1
);

wire slow_clk;
wire coin_pulse, pq_pulse, go_pulse;
wire [7:0] balance_display, return_display;
wire [3:0] d0,d1,d2,d3,D0,D1,D2,D3;
wire [3:0] digit0, digit1;

// Modules
clk_divider clk_div(.clk(clk), .rst(rst), .slow_clk(slow_clk));

edge_detect ed1 (.clk(slow_clk), .signal(coin), .pulse(coin_pulse));
edge_detect ed2 (.clk(slow_clk), .signal(pq), .pulse(pq_pulse));
edge_detect ed3 (.clk(slow_clk), .signal(go), .pulse(go_pulse));

vending vm(
 slow_clk, rst, buy, coin_pulse, pq_pulse, go_pulse,
 s1s2, balance_display, return_display
);

bin_to_digit_converter conv1(balance_display,d0,d1,d2,d3);
bin_to_digit_converter conv2(return_display,D0,D1,D2,D3);

tdm_digit_select disp1(clk,rst,d0,d1,d2,d3,digit0,an0);
tdm_digit_select disp2(clk,rst,D0,D1,D2,D3,digit1,an1);

seven_seg_decoder dec1(digit0,seg0);
seven_seg_decoder dec2(digit1,seg1);

endmodule
