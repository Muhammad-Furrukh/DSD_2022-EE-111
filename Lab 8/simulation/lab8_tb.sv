module lab8_tb();
logic write, reset, clk;
logic [6:0] SEGMENT; 
logic [7:0] AN;
logic [3:0] NUM; logic [3:0] SEL, segment_enc;
logic [3:0] qt0, qt1, qt2, qt3, qt4, qt5, qt6, qt7, qt8, qt9, qt10, qt11, qt12, qt13, qt14, qt15;
logic [4:0] CLKDIV;
logic direction;
lab8_sim UUT (
    .clk(clk),
    .write(write),
    .reset(reset),
    .segments(SEGMENT),
    .an(AN),
    .num(NUM),
    .sel(SEL),
    .clkdiv(CLKDIV),
    .direction(direction),
    .qt0(qt0),
    .qt1(qt1),
    .qt2(qt2),
    .qt3(qt3),
    .qt4(qt4),
    .qt5(qt5),
    .qt6(qt6),
    .qt7(qt7),
    .qt8(qt8),
    .qt9(qt9),
    .qt10(qt10),
    .qt11(qt11),
    .qt12(qt12),
    .qt13(qt13),
    .qt14(qt14),
    .qt15(qt15),
    .segment_enc(segment_enc)
);
initial begin
clk = 1;
forever #5 clk = ~ clk;
end
initial begin
//All segments will be off. First storage is selected. Since reset is on each storage has 1111 stored in it.
    reset <= 1;
    write <= 1;
    SEL = 4'b0000;
    NUM = 4'b1101;
    direction <= 0;
    @(posedge clk)
    reset <= 0;
    //d is stored in first storage
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    //C is stored in second storage
    SEL = 4'b0001; NUM = 4'b1100;
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    //B is stored in third storage
    SEL = 4'b0010; NUM = 4'b1011;
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    //A is stored in fourth storage
    SEL = 4'b0011; NUM = 4'b1010;
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    //4 is stored in fifth storage
    SEL = 4'b0100; NUM = 4'b0100;
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    //3 is stored in sixth storage
    SEL = 4'b0101; NUM = 4'b0011;
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    //2 is stored in seventh storage
    SEL = 4'b0110; NUM = 4'b0010;
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    //1 is stored in eigth storage
    SEL = 4'b0111; NUM = 4'b0001;
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    //E is stored in sixteenth storage
    SEL = 4'b1111; NUM = 4'b1110;
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    write <= 0;
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    direction <= 1;
end
endmodule