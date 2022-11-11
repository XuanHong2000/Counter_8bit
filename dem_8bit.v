`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:38:43 09/20/2021 
// Design Name: 
// Module Name:    dem_8bit 
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
module dem_8bit(clk,reset,UD,SS,out);
input clk,reset,UD,SS;
output reg[7:0] out;
initial
	begin
	out <= 8'h00;
	end
always@(posedge clk)
if(reset == 0)
out = 8'h00;
else
	begin
		if(SS==1)
		begin
			if(UD == 1)
			begin
				out = out + 1;
				if(out == 8'hff)
				out =8'h00;
			end
			
			else if(UD==0)
			begin
				out= out - 1;
				if (out == 8'h00)
				out = 8'hff;
			end
			
		end
		else if (SS == 0)
			out = out;
	end
endmodule
