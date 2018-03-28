# Auto-On-Off-Timer
Auto-On/Off Timer Code for PIC Microcontroller. 
Hardware consists of PIC18F45K22 8-Bit Micro-Processor, 2 LEDs, 3 Push Buttons, 1 Relay(DC 12V AC 220V).


# timer.c

Connect 3 Push Buttons at bits:

B1 for Permanent On Function.

B2 for Permanent Off Function.

B3 for Timer Function (Press once for 1Hr Timer, Hold for 2 Seconds for 1.5Hr Timer).



Connect 2 LEDs at bits:

D3= On when 1Hr and 1.5Hr Timer is active.

D4= On when 1.5Hr Timer is active.




# timer_beta.c

same as timer.c except the MCU gives 0 instead of 1. 
To be used when the relay switches on at Input=0.


# port_test.c
Sets all I/O ports to Output=High for checking the hardware.




