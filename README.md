# VHDL Clock Edge Handling Bug

This repository demonstrates a common error in VHDL code related to clock edge detection and data transfer.  The bug showcases how improper rising_edge detection can lead to unpredictable behavior.

## Bug Description
The provided VHDL code attempts to transfer data_in to data_out on the rising edge of the clock signal. However, it lacks crucial considerations for reset conditions, synchronizers, or potential metastability issues.

## Solution
The solution demonstrates improved clock edge handling.  It incorporates a reset signal and illustrates proper synchronization techniques to mitigate the risks associated with asynchronous inputs.

## How to Run
1. Use a VHDL simulator (e.g., ModelSim, GHDL) to simulate both the buggy and the corrected code.
2. Observe the difference in data transfer and behavior.