`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2024 06:54:48 PM
// Design Name: 
// Module Name: add_4_bits_tb
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


module add_4_bits_tb(

    );
    
  
   reg [3:0]a;
   reg [3:0]b;
   reg [3:0]ci;
   
   wire [3:0]s;
   wire co;
   
   add_4_bits uut(
   .s(s),
   .co(co),
   .a(a),
   .b(b),
   .ci(ci)
   );
   
   initial begin 
   a = 4'b0000;
   b = 4'b0000;
   ci = 4'b0000;
   end
   always #1 b = b + 1'b1;
   always #2 a = a + 1'b1;
   initial #100 $finish;
   
    
endmodule
