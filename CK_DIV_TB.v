`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:33:22 09/20/2021
// Design Name:   CK_DIV
// Module Name:   D:/tt tkvm 1/counter_8bit/CK_DIV_TB.v
// Project Name:  counter_8bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CK_DIV
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CK_DIV_TB;

	// Inputs
	reg clk50m;
	reg speed;

	// Outputs
	wire clkout;

	// Instantiate the Unit Under Test (UUT)
	CLK_DIV uut (
		.clk50m(clk50m), 
		.clkout(clkout), 
		.speed(speed)
	);

	initial begin
		// Initialize Inputs
		clk50m = 0;
		speed = 0;
		forever #10 clk50m=~clk50m;
		end
		// Wait 100 ns for global reset to finish
        
		// Add stimulus hereend
		initial begin
		speed=0;
		#5000;
		speed=1;
		#1000;

	end
      
endmodule

