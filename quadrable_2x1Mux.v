// quadrable_2x1Mux module
//Anas Talib - 1203051
module quadrable_2x1Mux(B,B_Complement,selection,F);
input [3:0]B; // 4 - bit 
input [3:0]B_Complement; // 4 - bit 
input selection; // zero or one
output [3:0]F;// 4 - bit 
reg [3:0]F;// 4 - bit 
always @ (B or B_Complement or selection)
       if (selection ==0)
		 F = B;
       else 
       F = B_Complement;    
endmodule 