
module Register_File_TB;

reg clk_tb = 0;
reg reset_tb;
reg Reg_Write_tb;
reg [4:0] Write_Register_tb;
reg [4:0] Read_Register_1_tb;
reg [4:0] Read_Register_2_tb;
reg [31:0] Write_Data_tb;
wire [31:0] Read_Data_1_tb;
wire [31:0] Read_Data_2_tb;
  
  
Reg_wrap #(

	.N(32)
)
RFTB
(
		.clk(clk_tb), 
		.reset(reset_tb), 
		.Reg_write_in(Reg_Write_tb),
		.Write_Register_1(Write_Register_tb), 
		.Read_Register_1(Read_Register_1_tb), 
		.Read_Register_2(Read_Register_2_tb),
		.Write_Data(Write_Data_tb),
		.Read_Data_1(Read_Data_1_tb), 
		.Read_Data_2(Read_Data_2_tb)

);


/*********************************************************/
initial // Clock generator
  begin
    forever #2 clk_tb = !clk_tb;
  end
/*********************************************************/
initial begin // reset generator
	#0 reset_tb = 0;
	#5 reset_tb = 1;
end

initial begin
	#0 Reg_Write_tb = 0;
	#5 Reg_Write_tb = 5;
	#50 Reg_Write_tb = 0;
end


initial begin
	#0 Read_Register_1_tb = 0;
	#4 Read_Register_1_tb = 0;
	#70 Read_Register_1_tb = 2;
	#10 Read_Register_1_tb = 4;
	#10 Read_Register_1_tb = 25;
	#10 Read_Register_1_tb = 31;

end


initial begin
	#0 Read_Register_2_tb = 0;
	#4  Read_Register_2_tb = 0;
	#70 Read_Register_2_tb = 3;
	#10 Read_Register_2_tb = 5;
	#10 Read_Register_2_tb = 26;
	#10 Read_Register_2_tb = 30;

end

initial begin
	#0 Write_Register_tb = 0;
	#4 Write_Register_tb = 0;
	#10 Write_Register_tb = 2;
	#10 Write_Register_tb = 4;
	#10 Write_Register_tb = 25;
	#10 Write_Register_tb = 31;

end


/*********************************************************/
initial begin // reset generator
	#0 Write_Data_tb = 3;
	#4 Write_Data_tb = 4;
	#10 Write_Data_tb = 15;
	#10 Write_Data_tb = 21;
	#10 Write_Data_tb = 8;
	#10 Write_Data_tb = 76;
end

/*********************************************************/

endmodule 