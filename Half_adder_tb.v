`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2026 19:15:00
// Design Name: 
// Module Name: Half_adder_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Half_adder_tb;

reg a;
reg b;
wire sum;
wire carry;
integer i;
Half_adder_dataflow dut(a,b,sum,carry);
initial begin
for(i=0;i<4;i=i+1)
begin
{a,b}=i;
       #10;
              $display("%b %b | %b %b", a, b,sum,carry);
end
$finish;
end 
endmodule