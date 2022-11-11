`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:51:23 09/20/2021
// Design Name:   counter_8bit
// Module Name:   D:/tt tkvm 1/counter_8bit/counter_8bit_tb.v
// Project Name:  counter_8bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter_8bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module counter_8bit_tb;

	// Inputs
	reg clk;
	reg reset;
	reg speed;
	reg UD;
	reg SS;

	// Outputs
	wire [7:0] out;


	// Instantiate the Unit Under Test (UUT)
	counter_8b uut (
		.clk(clk), 
		.reset(reset), 
		.speed(speed), 
		.UD(UD), 
		.SS(SS), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		forever #10 clk=~clk;
        
		end
	initial begin
		// Initialize Inputs
		clk = 0;
		UD = 0;
		SS = 0;
		speed = 0;
		reset=1;
		#1000;
		reset=0;
		#1000;
		reset=1;
		
		end
		initial begin
		speed=0;
		#5000;
		speed=1;
		#1000;
		end
		initial begin // kich hoat ss
		// Initialize Inputs
		SS= 1;
		#1000;
		SS=0;
		#200;
		SS=1;
	   end
		initial begin // kich hoat ud
		// Initialize Inputs
		
		
		UD=1;
		#4000;
		UD=0;
		#5000;
		
	   end
	endmodule	
