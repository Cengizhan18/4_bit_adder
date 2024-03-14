`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2024 06:41:44 PM
// Design Name: 
// Module Name: add_4_bits
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


module add_4_bits(s,co,a,b,ci);
   output [3:0]s;
   output co;
   wire [2:0]c;
   input[3:0]a,b; 
   input ci;
  full_3 add1(s[0],c[0],a[0],b[0],ci);
  full_3 add2(s[1],c[1],a[1],b[1],c[0]);
  full_3 add3(s[2],c[2],a[2],b[2],c[1]);
  full_3 add4(s[3],c[3],a[3],b[3],c[2]);
  
endmodule

module full_3(s,co,a,b,c);
input a,b,c;
output reg s,co;
always@(*) begin
assign s = a^b^c;
assign co = (a&b) | (a&c) | (b&c);
end 
endmodule


