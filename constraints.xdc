## ================= CLOCK =================
set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS33} [get_ports {clk}]

## ================= PUSH BUTTONS =================
set_property -dict {PACKAGE_PIN J2 IOSTANDARD LVCMOS33} [get_ports {buy}]
set_property -dict {PACKAGE_PIN J5 IOSTANDARD LVCMOS33} [get_ports {coin}]
set_property -dict {PACKAGE_PIN H2 IOSTANDARD LVCMOS33} [get_ports {pq}]
set_property -dict {PACKAGE_PIN J1 IOSTANDARD LVCMOS33} [get_ports {go}]

## ================= SWITCHES =================
set_property -dict {PACKAGE_PIN K1 IOSTANDARD LVCMOS33} [get_ports {rst}]
set_property -dict {PACKAGE_PIN V2 IOSTANDARD LVCMOS33} [get_ports {s1s2[0]}]
set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVCMOS33} [get_ports {s1s2[1]}]

## ================= STATUS LEDs =================
set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS33} [get_ports {done}]
set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS33} [get_ports {error}]
set_property -dict {PACKAGE_PIN F1 IOSTANDARD LVCMOS33} [get_ports {purchase_mode_active}]
set_property -dict {PACKAGE_PIN F2 IOSTANDARD LVCMOS33} [get_ports {idle_mode_status}]

## ================= PRODUCT LEDs =================
set_property -dict {PACKAGE_PIN E1 IOSTANDARD LVCMOS33} [get_ports {selected_product_led[0]}]
set_property -dict {PACKAGE_PIN E2 IOSTANDARD LVCMOS33} [get_ports {selected_product_led[1]}]

## ================= QUANTITY LEDs =================
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports {selected_quantity_led[0]}]
set_property -dict {PACKAGE_PIN E5 IOSTANDARD LVCMOS33} [get_ports {selected_quantity_led[1]}]
set_property -dict {PACKAGE_PIN E6 IOSTANDARD LVCMOS33} [get_ports {selected_quantity_led[2]}]
set_property -dict {PACKAGE_PIN C3 IOSTANDARD LVCMOS33} [get_ports {selected_quantity_led[3]}]

## ================= 7-SEG DISPLAY 0 =================
# Anodes
set_property -dict {PACKAGE_PIN D5 IOSTANDARD LVCMOS33} [get_ports {an0[0]}]
set_property -dict {PACKAGE_PIN C4 IOSTANDARD LVCMOS33} [get_ports {an0[1]}]
set_property -dict {PACKAGE_PIN C7 IOSTANDARD LVCMOS33} [get_ports {an0[2]}]
set_property -dict {PACKAGE_PIN A8 IOSTANDARD LVCMOS33} [get_ports {an0[3]}]

# Segments
set_property -dict {PACKAGE_PIN D7 IOSTANDARD LVCMOS33} [get_ports {seg0[0]}]
set_property -dict {PACKAGE_PIN C5 IOSTANDARD LVCMOS33} [get_ports {seg0[1]}]
set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS33} [get_ports {seg0[2]}]
set_property -dict {PACKAGE_PIN B7 IOSTANDARD LVCMOS33} [get_ports {seg0[3]}]
set_property -dict {PACKAGE_PIN A7 IOSTANDARD LVCMOS33} [get_ports {seg0[4]}]
set_property -dict {PACKAGE_PIN D6 IOSTANDARD LVCMOS33} [get_ports {seg0[5]}]
set_property -dict {PACKAGE_PIN B5 IOSTANDARD LVCMOS33} [get_ports {seg0[6]}]

## ================= 7-SEG DISPLAY 1 =================
# Anodes
set_property -dict {PACKAGE_PIN H3 IOSTANDARD LVCMOS33} [get_ports {an1[0]}]
set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS33} [get_ports {an1[1]}]
set_property -dict {PACKAGE_PIN F3 IOSTANDARD LVCMOS33} [get_ports {an1[2]}]
set_property -dict {PACKAGE_PIN E4 IOSTANDARD LVCMOS33} [get_ports {an1[3]}]

# Segments
set_property -dict {PACKAGE_PIN F4 IOSTANDARD LVCMOS33} [get_ports {seg1[0]}]
set_property -dict {PACKAGE_PIN J3 IOSTANDARD LVCMOS33} [get_ports {seg1[1]}]
set_property -dict {PACKAGE_PIN D2 IOSTANDARD LVCMOS33} [get_ports {seg1[2]}]
set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVCMOS33} [get_ports {seg1[3]}]
set_property -dict {PACKAGE_PIN B1 IOSTANDARD LVCMOS33} [get_ports {seg1[4]}]
set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS33} [get_ports {seg1[5]}]
set_property -dict {PACKAGE_PIN D1 IOSTANDARD LVCMOS33} [get_ports {seg1[6]}]
