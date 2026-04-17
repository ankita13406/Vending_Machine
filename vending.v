`timescale 1ns / 1ps
module vending(
input clk, rst, buy, coin, pq, go,
input [1:0] s1s2,
output reg [7:0] balance_display, return_display,
output reg [1:0] selected_product_led,
output reg [3:0] selected_quantity_led,
output reg done, error,
output reg purchase_mode_active, idle_mode_status
);

// Parameters
parameter P1_PRICE=5, P2_PRICE=10;
parameter IDLE=2'b00, PURCHASE=2'b01, DONE=2'b10, ERROR=2'b11;

reg [1:0] state, next_state;
reg [7:0] balance;
reg [3:0] quantity;
reg [3:0] stock_p1=10, stock_p2=10;
reg [7:0] total_cost;

// State Register
always @(posedge clk or posedge rst)
    if(rst) state <= IDLE;
    else state <= next_state;

// Cost Calculation
always @(*) begin
    case(s1s2)
        2'b01: total_cost = quantity * P1_PRICE;
        2'b10: total_cost = quantity * P2_PRICE;
        default: total_cost = 0;
    endcase
end

// Next State Logic
always @(*) begin
    case(state)
        IDLE: next_state = buy ? PURCHASE : IDLE;

        PURCHASE:
            if(go)
                next_state = (balance >= total_cost) ? DONE : ERROR;
            else next_state = PURCHASE;

        DONE: next_state = DONE;
        ERROR: next_state = IDLE;
    endcase
end

// Output Logic
always @(posedge clk or posedge rst) begin
    if(rst) begin
        balance<=0; quantity<=0;
        done<=0; error<=0;
    end else begin
        done<=0; error<=0;

        case(state)
            PURCHASE: begin
                if (coin) balance <= balance + 5;
                if (pq) quantity <= quantity + 1;
            end

            DONE: begin
                done <= 1;
                return_display <= balance - total_cost;
            end

            ERROR: error <= 1;
        endcase

        balance_display <= balance;
    end
end

endmodule
