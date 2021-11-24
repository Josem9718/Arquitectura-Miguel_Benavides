//MIGULE BENAVIDES
//Register File


module Register_File
#(
	parameter N = 32
)
(
	input clk, reset, Reg_write_in,
	
	input [4:0] Write_Register_1, Read_Register_1, Read_Register_2,
	input [N-1:0] Write_Data,
	output wire [N-1:0] Read_Data_1, Read_Data_2

);
wire [32:0] q, t, r, out, out2;
//integer i;

//initial begin 
//for (i=0; i<32; i = i +1) begin

	assign r[0] = Reg_write_in & t[0];
	assign r[1] = Reg_write_in & t[1];
	assign r[2] = Reg_write_in & t[2];
	assign r[3] = Reg_write_in & t[3];
	assign r[4] = Reg_write_in & t[4];
	assign r[5] = Reg_write_in & t[5];
	assign r[6] = Reg_write_in & t[6];
	assign r[7] = Reg_write_in & t[7];
	assign r[8] = Reg_write_in & t[8];
	assign r[9] = Reg_write_in & t[9];
	assign r[10] = Reg_write_in & t[10];
	assign r[11] = Reg_write_in & t[11];
	assign r[12] = Reg_write_in & t[12];
	assign r[13] = Reg_write_in & t[13];
	assign r[14] = Reg_write_in & t[14];
	assign r[15] = Reg_write_in & t[15];
	assign r[16] = Reg_write_in & t[16];
	assign r[17] = Reg_write_in & t[17];
	assign r[18] = Reg_write_in & t[18];
	assign r[19] = Reg_write_in & t[19];
	assign r[20] = Reg_write_in & t[20];
	assign r[21] = Reg_write_in & t[21];
	assign r[22] = Reg_write_in & t[22];
	assign r[23] = Reg_write_in & t[23];
	assign r[24] = Reg_write_in & t[24];
	assign r[25] = Reg_write_in & t[25];
	assign r[26] = Reg_write_in & t[26];
	assign r[27] = Reg_write_in & t[27];
	assign r[28] = Reg_write_in & t[28];
	assign r[29] = Reg_write_in & t[29];
	assign r[30] = Reg_write_in & t[30];
	assign r[31] = Reg_write_in & t[31];
//end
//end

Pri_deco decoprioridad(.Wregister(Write_Register_1), .out(t));

Register zero (.D(Write_Data), .clk(clk), .rst(reset), .en(r[0]), .Q(q[0]));
Register at (.D(Write_Data), .clk(clk), .rst(reset), .en(r[1]), .Q(q[1]));
Register v0 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[2]), .Q(q[2]));
Register v1 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[3]), .Q(q[3]));
Register a0 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[4]), .Q(q[4]));
Register a1 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[5]), .Q(q[5]));
Register a2 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[6]), .Q(q[6]));
Register a3 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[7]), .Q(q[7]));
Register t0 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[8]), .Q(q[8]));
Register t1 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[9]), .Q(q[9]));
Register t2 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[10]), .Q(q[10]));
Register t3 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[11]), .Q(q[11]));
Register t4 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[12]), .Q(q[12]));
Register t5 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[13]), .Q(q[13]));
Register t6 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[14]), .Q(q[14]));
Register t7 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[15]), .Q(q[15]));
Register s0 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[16]), .Q(q[16]));
Register s1 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[17]), .Q(q[17]));
Register s2 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[18]), .Q(q[18]));
Register s3 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[19]), .Q(q[19]));
Register s4 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[20]), .Q(q[20]));
Register s5 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[21]), .Q(q[21]));
Register s6 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[22]), .Q(q[22]));
Register s7 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[23]), .Q(q[23]));
Register t8 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[24]), .Q(q[24]));
Register t9 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[25]), .Q(q[25]));
Register k0 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[26]), .Q(q[26]));
Register k1 (.D(Write_Data), .clk(clk), .rst(reset), .en(r[27]), .Q(q[27]));
Register gp (.D(Write_Data), .clk(clk), .rst(reset), .en(r[28]), .Q(q[28]));
Register sp (.D(Write_Data), .clk(clk), .rst(reset), .en(r[29]), .Q(q[29]));
Register fp (.D(Write_Data), .clk(clk), .rst(reset), .en(r[30]), .Q(q[30]));
Register ra (.D(Write_Data), .clk(clk), .rst(reset), .en(r[31]), .Q(q[31]));

Mux32to1 MUX1 (.I0(q[0]),.I1(q[1]),.I2(q[2]),.I3(q[3]),.I4(q[4]),.I5(q[5]),.I6(q[6]),.I7(q[7]),.I8(q[8]),.I9(q[9]),.I10(q[10]),
			 .I11(q[11]),.I12(q[12]),.I13(q[13]),.I14(q[14]),.I15(q[15]),.I16(q[16]),.I17(q[17]),.I18(q[18]),.I19(q[19]),.I20(q[20]),
			 .I21(q[21]),.I22(q[22]),.I23(q[23]),.I24(q[24]),.I25(q[25]),.I26(q[26]),.I27(q[27]),.I28(q[28]),.I29(q[29]),.I30(q[30]),
          .I31(q[31]),.Sel(Read_Register_1), .Data_out(out));

Mux32to1 MUX2 (.I0(q[0]),.I1(q[1]),.I2(q[2]),.I3(q[3]),.I4(q[4]),.I5(q[5]),.I6(q[6]),.I7(q[7]),.I8(q[8]),.I9(q[9]),.I10(q[10]),
			 .I11(q[11]),.I12(q[12]),.I13(q[13]),.I14(q[14]),.I15(q[15]),.I16(q[16]),.I17(q[17]),.I18(q[18]),.I19(q[19]),.I20(q[20]),
			 .I21(q[21]),.I22(q[22]),.I23(q[23]),.I24(q[24]),.I25(q[25]),.I26(q[26]),.I27(q[27]),.I28(q[28]),.I29(q[29]),.I30(q[30]),
          .I31(q[31]),.Sel(Read_Register_2), .Data_out(out2));
			 
assign Read_Data_1 = out;
assign Read_Data_2 = out2;			 


endmodule 