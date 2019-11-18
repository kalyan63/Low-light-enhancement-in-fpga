Methodology:
Images cannot be directly loaded on an FPGA. Basys 3 is used as FPGA.
Therefore, the input image is converted to Xilinx coefficient (.coe) file.
In the coe file, each pixel of the image is stored as a binary value.
This file is loaded in FPGA through the use of BRAMs. BRAMs serve as memory component.
The synthesized Verilog modules are im-plemented on FPGA device where all the processing takes place.
The final output image is displayed on a monitor through the use of VGA interface.


Size of the image should be 160 by 115 pixels. Any image that is to be given input should be 
compressed to this size.

After downloading our project files and opening the main file, firstly create brams and upload
required coe file.



Github link:  https://github.com/kalyan63/Low-light-enhancement-in-fpga.git

Reference link for algorithm: https://in.mathworks.com/help/visionhdl/examples/low-light-enhancement.html
