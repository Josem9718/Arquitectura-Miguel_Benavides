// MIGUEL BENAVIDES
// Multiplexer 32 to 1
 
module Mux32to1 #(
	parameter WIDTH=32
)
(
	input [4:0] Sel,
	input [WIDTH-1:0] I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,I16,I17,I18,I19,I20,
							 I21,I22,I23,I24,I25,I26,I27,I28,I29,I30,I31,
   output reg [WIDTH-1:0] Data_out
); 
 
   always @ (*)
   begin
      case(Sel)
         5'b00000: begin
            Data_out <= I0;
         end
         5'b00001: begin
            Data_out <= I1;
         end
         5'b00010: begin
            Data_out <= I2;
         end
         5'b00011: begin
            Data_out <= I3;
         end
			5'b00100: begin
            Data_out <= I4;
         end
         5'b00101: begin
            Data_out <= I5;
         end
         5'b00110: begin
            Data_out <= I6;
         end
         5'b00111: begin
            Data_out <= I7;
         end
			5'b01000: begin
            Data_out <= I8;
         end
         5'b01001: begin
            Data_out <= I9;
         end
         5'b01010: begin
            Data_out <= I10;
         end
         5'b01011: begin
            Data_out <= I11;
         end
			5'b01100: begin
            Data_out <= I12;
         end
         5'b01101: begin
            Data_out <= I13;
         end
         5'b01110: begin
            Data_out <= I14;
         end
         5'b01111: begin
            Data_out <= I15;
         end
			5'b10000: begin
            Data_out <= I16;
         end
         5'b10001: begin
            Data_out <= I17;
         end	
			5'b10010: begin
            Data_out <= I18;
         end
         5'b10011: begin
            Data_out <= I19;
         end
			5'b10100: begin
            Data_out <= I20;
         end
         5'b10101: begin
            Data_out <= I21;
         end
			5'b10110: begin
            Data_out <= I22;
         end
         5'b10111: begin
            Data_out <= I23;
         end
         5'b11000: begin
            Data_out <= I24;
         end	
         5'b11001: begin
            Data_out <= I25;
         end
			5'b11010: begin
            Data_out <= I26;
         end
         5'b11011: begin
            Data_out <= I27;
         end
         5'b11100: begin
            Data_out <= I28;
         end
         5'b11101: begin
            Data_out <= I29;
         end
			5'b11110: begin
            Data_out <= I30;
         end
         5'b11111: begin
            Data_out <= I31;
         end
			endcase
   end
endmodule
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
//module Mux32to1
//   #(parameter WIDTH=32)
//   (input [WIDTH-1:0] I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,I16,I17,I18,I19,I20,
//							 I21,I22,I23,I24,I25,I26,I27,I28,I29,I30,I31,
//    input [4:0] Sel,
//    output [WIDTH-1:0] Data_out);
//
//    wire [WIDTH-1:0] I [32];
//
//
//    assign I[0]=I0;
//    assign I[1]=I1;
//    assign I[2]=I2;
//    assign I[3]=I3;
//	 assign I[4]=I4;
//    assign I[5]=I5;
//    assign I[6]=I6;
//    assign I[7]=I7;
//	 assign I[8]=I8;
//    assign I[9]=I9;
//    assign I[10]=I10;
//	
//    assign I[11]=I11;
//    assign I[12]=I12;
//    assign I[13]=I13;
//	 assign I[14]=I14;
//    assign I[15]=I15;
//    assign I[16]=I16;
//    assign I[17]=I17;
//	 assign I[18]=I18;
//    assign I[19]=I19;
//    assign I[20]=I20;
//	 
//	 assign I[21]=I21;
//    assign I[22]=I22;
//    assign I[23]=I23;
//	 assign I[24]=I24;
//    assign I[25]=I25;
//    assign I[26]=I26;
//    assign I[27]=I27;
//	 assign I[28]=I28;
//    assign I[29]=I29;
//    assign I[30]=I30;
//	 assign I[31]=I31;
//    
//    
//    assign Data_out = I[Sel];
//	 
// endmodule 
// 
 ////////////////////////////////////////////////////////////////////////////////////