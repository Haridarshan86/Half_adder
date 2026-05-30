`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2026 19:12:19
// Design Name: 
// Module Name: Half_adder
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


module Half_adder_dataflow(input a,b,output sum,carry);
assign sum=a^b;
assign carry=a&b;
endmodule


module Half_adder_gatelevel(input a,b,output sum,carry);
xor x1(sum,a,b);
and a1(carry,a,b);
endmodule


module Half_adder_behavioral(input a,b,output reg sum,carry);
  always@(*)begin
      sum = a ^ b;
      carry = a & b;
end
endmodule
