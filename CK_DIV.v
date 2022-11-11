`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:30:11 09/20/2021 
// Design Name: 
// Module Name:    CK_DIV 
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
module CK_DIV(clk50m,clk_out,speed);
input clk50m , speed;
output reg clk_out;
reg [4:0] cnt;
initial 
	begin
		cnt <= 1; 
		clk_out <= 0;
	end
always @(posedge clk50m)
if (speed==0)
begin
   if (cnt==25)
       begin
       clk_out <=~clk_out;
	    cnt<=1;
	    end
    else 
       cnt<=cnt+1;
end
else if (speed==1)
begin 
   if (cnt==5)
       begin
       clk_out <=~clk_out;
	    cnt<=1;
	    end
       else 
      cnt<=cnt+1;
end

endmodule