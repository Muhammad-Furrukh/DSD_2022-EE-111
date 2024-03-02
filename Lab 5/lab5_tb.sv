module lab5_tb();
logic [3:0] NUM; logic [2:0] SEL;
logic AN0, AN1, AN2, AN3, AN4, AN5, AN6, AN7,
A, B, C, D, E, F, G, DP;
lab5 UUT(
.num(NUM),
.sel(SEL),
.an0(AN0),
.an1(AN1),
.an2(AN2),
.an3(AN3),
.an4(AN4),
.an5(AN5), 
.an6(AN6),
.an7(AN7),
.a(A),
.b(B),
.c(C),
.d(D),
.e(E),
.f(F),
.g(G),
.dp(DP)
);
localparam period = 10;
initial 
begin
// First segemnet enabled
SEL = 3'b000; NUM = 4'b0000;
#period;
SEL = 3'b000; NUM = 4'b0001;
#period;
SEL = 3'b000; NUM = 4'b0010;
#period;
SEL = 3'b000; NUM = 4'b0011;
#period;
SEL = 3'b000; NUM = 4'b0100;
#period;
SEL = 3'b000; NUM = 4'b0101;
#period;
SEL = 3'b000; NUM = 4'b0110;
#period;
SEL = 3'b000; NUM = 4'b0111;
#period;
SEL = 3'b000; NUM = 4'b1000;
#period;
SEL = 3'b000; NUM = 4'b1001;
#period;
SEL = 3'b000; NUM = 4'b1010;
#period;
SEL = 3'b000; NUM = 4'b1011;
#period;
SEL = 3'b000; NUM = 4'b1100;
#period;
SEL = 3'b000; NUM = 4'b1101;
#period;
SEL = 3'b000; NUM = 4'b1110;
#period;
SEL = 3'b000; NUM = 4'b1111;
#period;
// Second segemnet enabled
SEL = 3'b001; NUM = 4'b0000;
#period;
SEL = 3'b001; NUM = 4'b0001;
#period;
SEL = 3'b001; NUM = 4'b0010;
#period;
SEL = 3'b001; NUM = 4'b0011;
#period;
SEL = 3'b001; NUM = 4'b0100;
#period;
SEL = 3'b001; NUM = 4'b0101;
#period;
SEL = 3'b001; NUM = 4'b0110;
#period;
SEL = 3'b001; NUM = 4'b0111;
#period;
SEL = 3'b001; NUM = 4'b1000;
#period;
SEL = 3'b001; NUM = 4'b1001;
#period;
SEL = 3'b001; NUM = 4'b1010;
#period;
SEL = 3'b001; NUM = 4'b1011;
#period;
SEL = 3'b001; NUM = 4'b1100;
#period;
SEL = 3'b001; NUM = 4'b1101;
#period;
SEL = 3'b001; NUM = 4'b1110;
#period;
SEL = 3'b001; NUM = 4'b1111;
#period;
// Third segemnet enabled
SEL = 3'b010; NUM = 4'b0000;
#period;
SEL = 3'b010; NUM = 4'b0001;
#period;
SEL = 3'b010; NUM = 4'b0010;
#period;
SEL = 3'b010; NUM = 4'b0011;
#period;
SEL = 3'b010; NUM = 4'b0100;
#period;
SEL = 3'b010; NUM = 4'b0101;
#period;
SEL = 3'b010; NUM = 4'b0110;
#period;
SEL = 3'b010; NUM = 4'b0111;
#period;
SEL = 3'b010; NUM = 4'b1000;
#period;
SEL = 3'b010; NUM = 4'b1001;
#period;
SEL = 3'b010; NUM = 4'b1010;
#period;
SEL = 3'b010; NUM = 4'b1011;
#period;
SEL = 3'b010; NUM = 4'b1100;
#period;
SEL = 3'b010; NUM = 4'b1101;
#period;
SEL = 3'b010; NUM = 4'b1110;
#period;
SEL = 3'b010; NUM = 4'b1111;
#period;
// Fourth segemnet enabled
SEL = 3'b011; NUM = 4'b0000;
#period;
SEL = 3'b011; NUM = 4'b0001;
#period;
SEL = 3'b011; NUM = 4'b0010;
#period;
SEL = 3'b011; NUM = 4'b0011;
#period;
SEL = 3'b011; NUM = 4'b0100;
#period;
SEL = 3'b011; NUM = 4'b0101;
#period;
SEL = 3'b011; NUM = 4'b0110;
#period;
SEL = 3'b011; NUM = 4'b0111;
#period;
SEL = 3'b011; NUM = 4'b1000;
#period;
SEL = 3'b011; NUM = 4'b1001;
#period;
SEL = 3'b011; NUM = 4'b1010;
#period;
SEL = 3'b011; NUM = 4'b1011;
#period;
SEL = 3'b011; NUM = 4'b1100;
#period;
SEL = 3'b011; NUM = 4'b1101;
#period;
SEL = 3'b011; NUM = 4'b1110;
#period;
SEL = 3'b011; NUM = 4'b1111;
#period;
// Fifth segemnet enabled
SEL = 3'b100; NUM = 4'b0000;
#period;
SEL = 3'b100; NUM = 4'b0001;
#period;
SEL = 3'b100; NUM = 4'b0010;
#period;
SEL = 3'b100; NUM = 4'b0011;
#period;
SEL = 3'b100; NUM = 4'b0100;
#period;
SEL = 3'b100; NUM = 4'b0101;
#period;
SEL = 3'b100; NUM = 4'b0110;
#period;
SEL = 3'b100; NUM = 4'b0111;
#period;
SEL = 3'b100; NUM = 4'b1000;
#period;
SEL = 3'b100; NUM = 4'b1001;
#period;
SEL = 3'b100; NUM = 4'b1010;
#period;
SEL = 3'b100; NUM = 4'b1011;
#period;
SEL = 3'b100; NUM = 4'b1100;
#period;
SEL = 3'b100; NUM = 4'b1101;
#period;
SEL = 3'b100; NUM = 4'b1110;
#period;
SEL = 3'b100; NUM = 4'b1111;
#period;
// Sixth segemnet enabled
SEL = 3'b101; NUM = 4'b0000;
#period;
SEL = 3'b101; NUM = 4'b0001;
#period;
SEL = 3'b101; NUM = 4'b0010;
#period;
SEL = 3'b101; NUM = 4'b0011;
#period;
SEL = 3'b101; NUM = 4'b0100;
#period;
SEL = 3'b101; NUM = 4'b0101;
#period;
SEL = 3'b101; NUM = 4'b0110;
#period;
SEL = 3'b101; NUM = 4'b0111;
#period;
SEL = 3'b101; NUM = 4'b1000;
#period;
SEL = 3'b101; NUM = 4'b1001;
#period;
SEL = 3'b101; NUM = 4'b1010;
#period;
SEL = 3'b101; NUM = 4'b1011;
#period;
SEL = 3'b101; NUM = 4'b1100;
#period;
SEL = 3'b101; NUM = 4'b1101;
#period;
SEL = 3'b101; NUM = 4'b1110;
#period;
SEL = 3'b101; NUM = 4'b1111;
#period;
// Seventh segemnet enabled
SEL = 3'b110; NUM = 4'b0000;
#period;
SEL = 3'b110; NUM = 4'b0001;
#period;
SEL = 3'b110; NUM = 4'b0010;
#period;
SEL = 3'b110; NUM = 4'b0011;
#period;
SEL = 3'b110; NUM = 4'b0100;
#period;
SEL = 3'b110; NUM = 4'b0101;
#period;
SEL = 3'b110; NUM = 4'b0110;
#period;
SEL = 3'b110; NUM = 4'b0111;
#period;
SEL = 3'b110; NUM = 4'b1000;
#period;
SEL = 3'b110; NUM = 4'b1001;
#period;
SEL = 3'b110; NUM = 4'b1010;
#period;
SEL = 3'b110; NUM = 4'b1011;
#period;
SEL = 3'b110; NUM = 4'b1100;
#period;
SEL = 3'b110; NUM = 4'b1101;
#period;
SEL = 3'b110; NUM = 4'b1110;
#period;
SEL = 3'b110; NUM = 4'b1111;
#period;
// Eighth segemnet enabled
SEL = 3'b111; NUM = 4'b0000;
#period;
SEL = 3'b111; NUM = 4'b0001;
#period;
SEL = 3'b111; NUM = 4'b0010;
#period;
SEL = 3'b111; NUM = 4'b0011;
#period;
SEL = 3'b111; NUM = 4'b0100;
#period;
SEL = 3'b111; NUM = 4'b0101;
#period;
SEL = 3'b111; NUM = 4'b0110;
#period;
SEL = 3'b111; NUM = 4'b0111;
#period;
SEL = 3'b111; NUM = 4'b1000;
#period;
SEL = 3'b111; NUM = 4'b1001;
#period;
SEL = 3'b111; NUM = 4'b1010;
#period;
SEL = 3'b111; NUM = 4'b1011;
#period;
SEL = 3'b111; NUM = 4'b1100;
#period;
SEL = 3'b111; NUM = 4'b1101;
#period;
SEL = 3'b111; NUM = 4'b1110;
#period;
SEL = 3'b111; NUM = 4'b1111;
#period;
end
endmodule