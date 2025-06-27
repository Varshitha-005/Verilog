This repository contains a simple Verilog project created as part of my learning journey in digital electronics and hardware description languages.
It includes:
👉A logic circuit written in Verilog that uses NAND, AND, and NOR gates
👉 A testbench to simulate the circuit and observe the output for different input combinations
👉 A small hello-world-style Verilog program to verify that the Verilog environment works correctly in VS Code
How to run the simulation⁉️
Make sure Icarus Verilog is installed on your system. You can compile and simulate using these commands:
iverilog -o sim.out testbench.v
vvp sim.out
For the hello-world test module:
iverilog -o test.out test.v
vvp test.out
This project helped me understand how to write a Verilog module, how to create a testbench, and how to simulate the design using Icarus Verilog.

If you're also learning Verilog, feel free to use this as a starting point or reference.
