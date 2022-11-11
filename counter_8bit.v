`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:44:20 09/20/2021 
// Design Name: 
// Module Name:    counter_8bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module counter_8bit(clk50m,reset,speed,UD,SS,out);
input clk50m,speed, reset, UD, SS;
output wire [7:0] out;
wire clk;
CK_DIV IC1(clk50m,clk,speed);
dem_8bit IC2(clk,reset, UD, SS, out8bit);
endmodule