module One_Bit_Comparator
(
	input 	wire	in1,
	input 	wire	in2,
	
	output	reg		out1,
	output	reg		out2,
	output	reg		out3
);

always@(*)
	begin
		if(in1<in2)
			begin
				out1<=1'b0;
				out2<=1'b1;
				out3<=1'b1;
			end
		else	if(in1==in2)
			begin
				out1<=1'b1;
				out2<=1'b0;
				out3<=1'b1;
			end
		else	if(in1>in2)
			begin
				out1<=1'b1;
				out2<=1'b1;
				out3<=1'b0;
			end
		else
			begin
				out1<=1'b1;
				out2<=1'b1;
				out3<=1'b1;
			end
	end
	
endmodule