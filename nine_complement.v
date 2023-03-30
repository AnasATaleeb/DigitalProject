// nine complement module
//Anas Talib - 1203051
module nine_complement(A,B,C,D,W,X,Y,Z);
input A,B,C,D;
output W,X,Y,Z;
assign W=!A && !B && !C;
assign X= B^C;
assign Y= C;
assign Z=!D;
endmodule 