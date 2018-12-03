`include "Mips.v"

module Mips_tb;
	reg clk;

	Mips mips(
		.clk(clk)
	);
	
	initial begin
		$dumpfile("mips_tb.vcd");
   		$dumpvars(0,mips);
		clk = 0;
		forever #10 clk = ~clk;
	end

endmodule