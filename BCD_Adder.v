// BCD Adder module
//Anas Talib - 1203051
module BCD_Adder(A,B,Cin,S,Cout,sum,carry1);
input [3:0]A; // 4 - bit 
input [3:0]B; // 4 - bit 
input Cin; // zero or one 
output [3:0]S; // 4 - bit 
output [3:0]sum; // to the next 4 bit binary adder
output carry1; // carry from first 4 bit binary adder
output Cout; // carry out 

assign {carry1,sum}=A+B; // sum = A+B and the carry = carty1 
assign Cout=(sum[0]&sum[1])|(sum[0]&sum[2])|carry1;  
assign S=(Cout)?(sum+4'b 0110):sum;

endmodule 