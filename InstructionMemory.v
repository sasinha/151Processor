module InstructionMemory(
	input reg [5:0] Address,
	output reg [31:0] ReadData
	);

	reg[63:0] IM[31:0];
	
    initial begin
        // Code:      RI|| rs || rd ||fu||    RT/IMM   |
    	IM[6`d0] =  32`b10000000000010001000000000010100;	// 0x00000014
    	IM[6`d1] =  32`b10000000000100001000000000001111;	// 0x0000000F
    	IM[6`d2] =  32`b10000000000110001000000000000100;	// 0x00000004
    	IM[6`d3] =  32`b00000000000000000000000000000000;
    	IM[6`d4] =  32`b00000100001000001000001000000000;
    	IM[6`d5] =  32`b10000000001010010000000000010100;	// 0xFFFFFFEC
    	IM[6`d6] =  32`b00000010001100010000001000000000;	// 0x00000000
    	IM[6`d7] =  32`b10001010010000001010101010101010;	// 0x00002AA8
    	IM[6`d8] =  32`b00000100000100001000001000000000;	// 0x00000004
    	IM[6`d9] =  32`b00000000000000000000000000000000;
    	IM[6`d10] = 32`b00001000010010111000000000000000;	// 0xFFFFFFDC
    	IM[6`d11] = 32`b10000100010010110000000000000001;	// 0x00000005
    	IM[6`d12] = 32`b10000000010011001000000000000010;	// 0x00000014
    	IM[6`d13] = 32`b00010010000101011000000000000000;	// 0x00000014
    	IM[6`d14] = 32`b00000000001100111000000000000000;	// 0xFFFFFFFF
    	IM[6`d15] = 32`b10000000000010001000000000000010;	// 0x00000002
    	IM[6`d16] = 32`b10000000000011001000000000011110;	// 0x80000000
    	IM[6`d17] = 32`b00000000000000000000000000000000;
    	IM[6`d18] = 32`b00001100001110001000001000000000;	// 0x7FFFFFFF
    	IM[6`d19] = 32`b00001100001100001000110000000000;	// 0xFFFFFFFE
    	IM[6`d20] = 32`b00000000000000000000000000000000;
    	IM[6`d21] = 32`b00000110001000110000101000000000;	// 0xFFFFFFEF
    	IM[6`d22] = 32`b00010000001001000000010000000000;	// 0x00002ABC
    	IM[6`d23] = 32`b10001000001001000010101010101010;	// 0xFFFF0074
    	IM[6`d24] = 32`b10000000010101011000000000000110;	// 0x00000006
    	IM[6`d25] = 32`b10000000000101011000000000000100;	// 0x00000004
    	IM[6`d26] = 32`b00000100010101001000000000000000;	// 0x00000060

    end

    always @(*)
    begin
    	ReadData = IM[Address];
    end

endmodule