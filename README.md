# FPGA-Based Vending Machine using Verilog HDL (Implemented in Vivado)


#  Overview

This project implements a vending machine on FPGA using Verilog HDL. It uses an FSM-based design to handle product selection, quantity input, coin insertion, and automatic change return, with real-time display using 7-segment displays.

#  Features
Product and quantity selection

Coin insertion with balance tracking

Automatic change return

FSM control (IDLE, PURCHASE, DONE, ERROR)

Time-multiplexed 7-segment display

Edge detection and clock division for stable inputs

LED status indicators


#  Modules
vending.v – FSM logic

clk_divider.v – Clock control

edge_detect.v – Input handling

bin_to_digit_converter.v – Binary to BCD

tdm_digit_select.v – Display multiplexing

seven_seg_decoder.v – Display driver

top_module.v – Integration

#  Hardware

FPGA board (e.g., Basys 3)

Push buttons and switches

LEDs and 7-segment displays

#  Working

Press buy to start

Select product and quantity

Insert coins

Press go to process

Displays balance and return amount

#  Tools Used

Verilog HDL

Xilinx Vivado
