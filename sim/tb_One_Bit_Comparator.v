`timescale	1ns/1ns
module	tb_One_Bit_Comparator();

reg	in1;
reg	in2;

wire	out1;
wire	out2;
wire	out3;

initial
	begin
		in1<=1'b0;
		in2<=1'b0;
	end

always	#10	in1		<=	{$random}%2	;
always	#10	in2		<=	{$random}%2	;
	
initial	begin
	$timeformat(-9, 0, "ns", 6);
    $monitor("@time %t: in1=%b in2=%b out1=%b out2=%b out3=%b", $time, in1, in2, out1, out2, out3);
end
	
One_Bit_Comparator One_Bit_Comparator_inst
(
	.in1(in1),
	.in2(in2),
	
	.out1(out1),
	.out2(out2),
	.out3(out3)
);
	
endmodule