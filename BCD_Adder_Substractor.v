// 4 bit  BCD Adder Substractor
//Anas Talib - 1203051
module BCD_Adder_Substractor (B,A,Mode,Result,Cout) ;
 
input [3:0] B; //4-bits
input [3:0] A; //4-bits
input Mode ; //zero or one 

wire [3:0] comp_wire; //4-bits 
wire [3:0] quadrable_wire; //4-bits 

nine_complement Gate1 (B,comp_wire); //call module nine complement
quadrable_2x1Mux Gate2 (comp_wire,B,Mode,quadrable_wire);//call module quadrable 2 x 1 mux 
BCD_Adder Gate3 (quadrable_wire,A,Mode,Result,Cout); //call module BCD adder 
 
output [3:0] Result ; // 4 - bit
output Cout ; // final carry out 

endmodule


