`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:41:01 09/20/2021
// Design Name:   dem_8bit
// Module Name:   D:/tt tkvm 1/counter_8bit/dem_8bit_tb.v
// Project Name:  counter_8bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dem_8bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dem_8bit_tb;

	// Inputs
	reg clk;
	reg reset;
	reg UD;
	reg SS;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	dem_8bit uut (
		.clk(clk), 
		.reset(reset), 
		.UD(UD), 
		.SS(SS), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		forever #10 clk=~ clk;
		end
		
		initial begin
		clk = 0;
		reset = 1;
		UD = 0;
		SS = 0;
		#500;
		
		reset=0;
		#200;
		reset=1;
		end
		
		initial begin 
		SS=1;
		#1000;
		SS=0;
		#200;
		SS=1;
		end
		
		initial begin
		UD=1;
		#5500;
		UD=0;
		#5500;
		end

      
endmodule

