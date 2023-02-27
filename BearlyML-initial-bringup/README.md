# BearlyML-Bringup

# Changelog

#### 2022-12-22

- Sent out BearlyML Module Board Rev 1 Y46 and BearlyML Carrier Board Rev 1 Y47. 

The FT2232 is overpriced, and the 6M crystal, SPI SRAM, and the SPI Flash chip are not in stock, so decided to not place SMT order on these parts.

#### 2022-12-23

- Ordered the remaining parts from Digikey.

- Received email from JLC. The footprint is wrong for MCP1729.

![image](https://user-images.githubusercontent.com/26409587/213618505-aba5e140-f799-43f6-b4a8-71f653710360.png)

- Fixed the footprint and send out the design.

#### 2022-12-24

- Received feedback from JLC. They do not support changing the Gerber file directly. Need to cancel order and submie the order again. 

- Placed the order for BearlyML Module Board Rev 1 Y48.

With the original order still pending, there's not enough level shifter parts left in the part library to make another Carrier Board order. Due to the weekend, the reply was relatively slow from JLC.

#### 2022-12-25

- Previous order finally gets cancelled by JLC. 

#### 2022-12-26

- Part status updated in the part library. Placed the new order for BearlyML Carrier Board Y49.

#### 2023-01-07

- Received the package for BearlyML Carrier Board.
- Soldered the FT2232 and flash chip on the board.
- Tested that computer can recognize the device on USB.

#### 2023-01-09

- DHL failed to deliver the order for BearlyML Module Board. Changing to non-contact delivery.

#### 2023-01-10

- Received the package for BearlyML Module Board. 

The SODIMM connector footprint is wrong. Fly wire the critical signals between the boards. Verified that the chip is working with a Blinky LED program.

#### 2023-01-16

- Sent out the updated BearlyML Module Board Rev2 Y51. 

- Received eamil from JLC. There are some issue with the ground plane pour over golden finger area. Fixed.

#### 2023-01-17

- Sent out the updated BearlyML Module Board Rev2 Y52. Fixed the SODIMM connector. 

- Finished the SODIMM pin mapping for SCuM-V, verified that they are compatible on the carrier boards with BearlyML.

- Sent out BearlyML Arty Carrier board Y53. 

#### 2023-01-19

@Sean Huang said that the PLL only works with clock frequency of ~100MHz. Ordered [100MHz crystal](https://www.digikey.com/en/products/detail/taitien/PYKTGLJANF-100-000000/10245225) from Digikey.


