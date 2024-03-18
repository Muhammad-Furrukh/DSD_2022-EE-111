module lab6_tb();
logic clk, reset, write; 
logic [6:0] SEGMENT; 
logic [7:0] AN;
 logic [3:0] NUM; logic [2:0] SEL;
lab6 UUT(
.clk(clk),
.reset(reset),
.write(write),
.num(NUM),
.sel(SEL),
.an(AN),
.segment(SEGMENT)
);
initial
begin
    clk = 1'b0;
    forever #5 clk = ~clk;
end
initial begin
    //All segments will show X, first display is selected
    reset <= 0;
    write <= 0;
    NUM = 4'b0000; SEL = 3'b000;
    @(posedge clk); // clk is rising, first segment selected, display shows 0
    reset <= # 1'b1;
    @(posedge clk);
    reset <= #1 1'b0; NUM = #1 4'b0001; //still shows 0 because write is 0
    @(posedge clk);
    write <= #1 1'b1; // shows 1
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0010; //still shows 1
    @(posedge clk);
    write <= #1 1'b1; //shows 2
     @(posedge clk);
    NUM = #1 4'b0011; //still shows 2 
    @(posedge clk);
    write <= #1 1'b1; // shows 3
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0100; //still shows 3
    @(posedge clk);
    write <= #1 1'b1; //shows 4
    @(posedge clk);
    NUM = #1 4'b0101; //still shows 4 
    @(posedge clk);
    write <= #1 1'b1; // shows 5
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0110; //still shows 5
    @(posedge clk);
    write <= #1 1'b1; //shows 6
     @(posedge clk);
    NUM = #1 4'b0111; //still shows 6
    @(posedge clk);
    write <= #1 1'b1; // shows 7
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1000; //still shows 7
    @(posedge clk);
    write <= #1 1'b1; //shows 8
    @(posedge clk);
    NUM = #1 4'b1001; //still shows 8
    @(posedge clk);
    write <= #1 1'b1; // shows 9
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1010; //still shows 9
    @(posedge clk);
    write <= #1 1'b1; //shows A
     @(posedge clk);
    NUM = #1 4'b1011; //still shows A 
    @(posedge clk);
    write <= #1 1'b1; // shows B
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1100; //still shows B
    @(posedge clk);
    write <= #1 1'b1; //shows C
    @(posedge clk);
    NUM = #1 4'b1101; //still shows C
    @(posedge clk);
    write <= #1 1'b1; // shows D
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1110; //still shows D
    @(posedge clk);
    write <= #1 1'b1; //shows E
     @(posedge clk);
    NUM = #1 4'b1111; //still shows E 
    @(posedge clk);
    write <= #1 1'b1; // shows F
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0000; //still shows F

    // Second display is selected
    //Display shows X, second display is selected
    @(posedge clk);
    SEL = 3'b001;
    @(posedge clk);
    write <= #1 1'b1; //shows 0
    @(posedge clk);
    SEL = 3'b000; //first display still shows F
    @(posedge clk)
    SEL = 3'b001; write <= #1 1'b0; NUM = #1 4'b0001; // second display still shows 0 because write is 0
    @(posedge clk);
    write <= #1 1'b1; // shows 1
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0010; //still shows 1
    @(posedge clk);
    write <= #1 1'b1; //shows 2
     @(posedge clk);
    NUM = #1 4'b0011; //still shows 2 
    @(posedge clk);
    write <= #1 1'b1; // shows 3
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0100; //still shows 3
    @(posedge clk);
    write <= #1 1'b1; //shows 4
    @(posedge clk);
    NUM = #1 4'b0101; //still shows 4 
    @(posedge clk);
    write <= #1 1'b1; // shows 5
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0110; //still shows 5
    @(posedge clk);
    write <= #1 1'b1; //shows 6
     @(posedge clk);
    NUM = #1 4'b0111; //still shows 6
    @(posedge clk);
    write <= #1 1'b1; // shows 7
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1000; //still shows 7
    @(posedge clk);
    write <= #1 1'b1; //shows 8
    @(posedge clk);
    NUM = #1 4'b1001; //still shows 8
    @(posedge clk);
    write <= #1 1'b1; // shows 9
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1010; //still shows 9
    @(posedge clk);
    write <= #1 1'b1; //shows A
     @(posedge clk);
    NUM = #1 4'b1011; //still shows A 
    @(posedge clk);
    write <= #1 1'b1; // shows B
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1100; //still shows B
    @(posedge clk);
    write <= #1 1'b1; //shows C
    @(posedge clk);
    NUM = #1 4'b1101; //still shows C
    @(posedge clk);
    write <= #1 1'b1; // shows D
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1110; //still shows D
    @(posedge clk);
    write <= #1 1'b1; //shows E
     @(posedge clk);
    NUM = #1 4'b1111; //still shows E 
    @(posedge clk);
    write <= #1 1'b1; // shows F
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0000; //still shows F

    // Third display is selected
    //Display shows X, third display is selected
    @(posedge clk);
    SEL = 3'b010;
    @(posedge clk);
    write <= #1 1'b1; //shows 0
    @(posedge clk)
    write <= #1 1'b0; NUM = #1 4'b0001; //still shows 0 because write is 0
    @(posedge clk);
    write <= #1 1'b1; // shows 1
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0010; //still shows 1
    @(posedge clk);
    write <= #1 1'b1; //shows 2
     @(posedge clk);
    NUM = #1 4'b0011; //still shows 2 
    @(posedge clk);
    write <= #1 1'b1; // shows 3
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0100; //still shows 3
    @(posedge clk);
    write <= #1 1'b1; //shows 4
    @(posedge clk);
    NUM = #1 4'b0101; //still shows 4 
    @(posedge clk);
    write <= #1 1'b1; // shows 5
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0110; //still shows 5
    @(posedge clk);
    write <= #1 1'b1; //shows 6
     @(posedge clk);
    NUM = #1 4'b0111; //still shows 6
    @(posedge clk);
    write <= #1 1'b1; // shows 7
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1000; //still shows 7
    @(posedge clk);
    write <= #1 1'b1; //shows 8
    @(posedge clk);
    NUM = #1 4'b1001; //still shows 8
    @(posedge clk);
    write <= #1 1'b1; // shows 9
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1010; //still shows 9
    @(posedge clk);
    write <= #1 1'b1; //shows A
     @(posedge clk);
    NUM = #1 4'b1011; //still shows A 
    @(posedge clk);
    write <= #1 1'b1; // shows B
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1100; //still shows B
    @(posedge clk);
    write <= #1 1'b1; //shows C
    @(posedge clk);
    NUM = #1 4'b1101; //still shows C
    @(posedge clk);
    write <= #1 1'b1; // shows D
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1110; //still shows D
    @(posedge clk);
    write <= #1 1'b1; //shows E
     @(posedge clk);
    NUM = #1 4'b1111; //still shows E 
    @(posedge clk);
    write <= #1 1'b1; // shows F
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0000; //still shows F

    // Fourth display is selected
    //Display shows X, fourth display is selected
    @(posedge clk);
    SEL = 3'b011;
    @(posedge clk);
    write <= #1 1'b1; //shows 0
    @(posedge clk)
    write <= #1 1'b0; NUM = #1 4'b0001; //still shows 0 because write is 0
    @(posedge clk);
    write <= #1 1'b1; // shows 1
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0010; //still shows 1
    @(posedge clk);
    write <= #1 1'b1; //shows 2
     @(posedge clk);
    NUM = #1 4'b0011; //still shows 2 
    @(posedge clk);
    write <= #1 1'b1; // shows 3
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0100; //still shows 3
    @(posedge clk);
    write <= #1 1'b1; //shows 4
    @(posedge clk);
    NUM = #1 4'b0101; //still shows 4 
    @(posedge clk);
    write <= #1 1'b1; // shows 5
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0110; //still shows 5
    @(posedge clk);
    write <= #1 1'b1; //shows 6
     @(posedge clk);
    NUM = #1 4'b0111; //still shows 6
    @(posedge clk);
    write <= #1 1'b1; // shows 7
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1000; //still shows 7
    @(posedge clk);
    write <= #1 1'b1; //shows 8
    @(posedge clk);
    NUM = #1 4'b1001; //still shows 8
    @(posedge clk);
    write <= #1 1'b1; // shows 9
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1010; //still shows 9
    @(posedge clk);
    write <= #1 1'b1; //shows A
     @(posedge clk);
    NUM = #1 4'b1011; //still shows A 
    @(posedge clk);
    write <= #1 1'b1; // shows B
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1100; //still shows B
    @(posedge clk);
    write <= #1 1'b1; //shows C
    @(posedge clk);
    NUM = #1 4'b1101; //still shows C
    @(posedge clk);
    write <= #1 1'b1; // shows D
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1110; //still shows D
    @(posedge clk);
    write <= #1 1'b1; //shows E
     @(posedge clk);
    NUM = #1 4'b1111; //still shows E 
    @(posedge clk);
    write <= #1 1'b1; // shows F
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0000; //still shows F

    // Fifth display is selected
    //Display shows X, fifth display is selected
    @(posedge clk);
    SEL = 3'b100;
    @(posedge clk);
    write <= #1 1'b1; //shows 0
    @(posedge clk)
    write <= #1 1'b0; NUM = #1 4'b0001; //still shows 0 because write is 0
    @(posedge clk);
    write <= #1 1'b1; // shows 1
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0010; //still shows 1
    @(posedge clk);
    write <= #1 1'b1; //shows 2
     @(posedge clk);
    NUM = #1 4'b0011; //still shows 2 
    @(posedge clk);
    write <= #1 1'b1; // shows 3
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0100; //still shows 3
    @(posedge clk);
    write <= #1 1'b1; //shows 4
    @(posedge clk);
    NUM = #1 4'b0101; //still shows 4 
    @(posedge clk);
    write <= #1 1'b1; // shows 5
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0110; //still shows 5
    @(posedge clk);
    write <= #1 1'b1; //shows 6
     @(posedge clk);
    NUM = #1 4'b0111; //still shows 6
    @(posedge clk);
    write <= #1 1'b1; // shows 7
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1000; //still shows 7
    @(posedge clk);
    write <= #1 1'b1; //shows 8
    @(posedge clk);
    NUM = #1 4'b1001; //still shows 8
    @(posedge clk);
    write <= #1 1'b1; // shows 9
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1010; //still shows 9
    @(posedge clk);
    write <= #1 1'b1; //shows A
     @(posedge clk);
    NUM = #1 4'b1011; //still shows A 
    @(posedge clk);
    write <= #1 1'b1; // shows B
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1100; //still shows B
    @(posedge clk);
    write <= #1 1'b1; //shows C
    @(posedge clk);
    NUM = #1 4'b1101; //still shows C
    @(posedge clk);
    write <= #1 1'b1; // shows D
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1110; //still shows D
    @(posedge clk);
    write <= #1 1'b1; //shows E
     @(posedge clk);
    NUM = #1 4'b1111; //still shows E 
    @(posedge clk);
    write <= #1 1'b1; // shows F
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0000; //still shows F

    // Sixth display is selected
    //Display shows X, Sixth display is selected
    @(posedge clk);
    SEL = 3'b101;
    @(posedge clk);
    write <= #1 1'b1; //shows 0
    @(posedge clk)
    write <= #1 1'b0; NUM = #1 4'b0001; //still shows 0 because write is 0
    @(posedge clk);
    write <= #1 1'b1; // shows 1
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0010; //still shows 1
    @(posedge clk);
    write <= #1 1'b1; //shows 2
     @(posedge clk);
    NUM = #1 4'b0011; //still shows 2 
    @(posedge clk);
    write <= #1 1'b1; // shows 3
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0100; //still shows 3
    @(posedge clk);
    write <= #1 1'b1; //shows 4
    @(posedge clk);
    NUM = #1 4'b0101; //still shows 4 
    @(posedge clk);
    write <= #1 1'b1; // shows 5
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0110; //still shows 5
    @(posedge clk);
    write <= #1 1'b1; //shows 6
     @(posedge clk);
    NUM = #1 4'b0111; //still shows 6
    @(posedge clk);
    write <= #1 1'b1; // shows 7
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1000; //still shows 7
    @(posedge clk);
    write <= #1 1'b1; //shows 8
    @(posedge clk);
    NUM = #1 4'b1001; //still shows 8
    @(posedge clk);
    write <= #1 1'b1; // shows 9
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1010; //still shows 9
    @(posedge clk);
    write <= #1 1'b1; //shows A
     @(posedge clk);
    NUM = #1 4'b1011; //still shows A 
    @(posedge clk);
    write <= #1 1'b1; // shows B
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1100; //still shows B
    @(posedge clk);
    write <= #1 1'b1; //shows C
    @(posedge clk);
    NUM = #1 4'b1101; //still shows C
    @(posedge clk);
    write <= #1 1'b1; // shows D
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1110; //still shows D
    @(posedge clk);
    write <= #1 1'b1; //shows E
     @(posedge clk);
    NUM = #1 4'b1111; //still shows E 
    @(posedge clk);
    write <= #1 1'b1; // shows F
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0000; //still shows F

    // Seventh display is selected
    //Display shows X, seventh display is selected
    @(posedge clk);
    SEL = 3'b110;
    @(posedge clk);
    write <= #1 1'b1; //shows 0
    @(posedge clk)
    write <= #1 1'b0; NUM = #1 4'b0001; //still shows 0 because write is 0
    @(posedge clk);
    write <= #1 1'b1; // shows 1
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0010; //still shows 1
    @(posedge clk);
    write <= #1 1'b1; //shows 2
     @(posedge clk);
    NUM = #1 4'b0011; //still shows 2 
    @(posedge clk);
    write <= #1 1'b1; // shows 3
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0100; //still shows 3
    @(posedge clk);
    write <= #1 1'b1; //shows 4
    @(posedge clk);
    NUM = #1 4'b0101; //still shows 4 
    @(posedge clk);
    write <= #1 1'b1; // shows 5
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0110; //still shows 5
    @(posedge clk);
    write <= #1 1'b1; //shows 6
     @(posedge clk);
    NUM = #1 4'b0111; //still shows 6
    @(posedge clk);
    write <= #1 1'b1; // shows 7
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1000; //still shows 7
    @(posedge clk);
    write <= #1 1'b1; //shows 8
    @(posedge clk);
    NUM = #1 4'b1001; //still shows 8
    @(posedge clk);
    write <= #1 1'b1; // shows 9
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1010; //still shows 9
    @(posedge clk);
    write <= #1 1'b1; //shows A
     @(posedge clk);
    NUM = #1 4'b1011; //still shows A 
    @(posedge clk);
    write <= #1 1'b1; // shows B
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1100; //still shows B
    @(posedge clk);
    write <= #1 1'b1; //shows C
    @(posedge clk);
    NUM = #1 4'b1101; //still shows C
    @(posedge clk);
    write <= #1 1'b1; // shows D
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1110; //still shows D
    @(posedge clk);
    write <= #1 1'b1; //shows E
     @(posedge clk);
    NUM = #1 4'b1111; //still shows E 
    @(posedge clk);
    write <= #1 1'b1; // shows F
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0000; //still shows F

    // Eighth display is selected
    //Display shows X, eighth display is selected
    @(posedge clk);
    SEL = 3'b111;
    @(posedge clk);
    write <= #1 1'b1; //shows 0
    @(posedge clk)
    write <= #1 1'b0; NUM = #1 4'b0001; //still shows 0 because write is 0
    @(posedge clk);
    write <= #1 1'b1; // shows 1
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0010; //still shows 1
    @(posedge clk);
    write <= #1 1'b1; //shows 2
     @(posedge clk);
    NUM = #1 4'b0011; //still shows 2 
    @(posedge clk);
    write <= #1 1'b1; // shows 3
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0100; //still shows 3
    @(posedge clk);
    write <= #1 1'b1; //shows 4
    @(posedge clk);
    NUM = #1 4'b0101; //still shows 4 
    @(posedge clk);
    write <= #1 1'b1; // shows 5
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0110; //still shows 5
    @(posedge clk);
    write <= #1 1'b1; //shows 6
     @(posedge clk);
    NUM = #1 4'b0111; //still shows 6
    @(posedge clk);
    write <= #1 1'b1; // shows 7
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1000; //still shows 7
    @(posedge clk);
    write <= #1 1'b1; //shows 8
    @(posedge clk);
    NUM = #1 4'b1001; //still shows 8
    @(posedge clk);
    write <= #1 1'b1; // shows 9
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1010; //still shows 9
    @(posedge clk);
    write <= #1 1'b1; //shows A
     @(posedge clk);
    NUM = #1 4'b1011; //still shows A 
    @(posedge clk);
    write <= #1 1'b1; // shows B
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1100; //still shows B
    @(posedge clk);
    write <= #1 1'b1; //shows C
    @(posedge clk);
    NUM = #1 4'b1101; //still shows C
    @(posedge clk);
    write <= #1 1'b1; // shows D
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b1110; //still shows D
    @(posedge clk);
    write <= #1 1'b1; //shows E
     @(posedge clk);
    NUM = #1 4'b1111; //still shows E 
    @(posedge clk);
    write <= #1 1'b1; // shows F
    @(posedge clk);
    write <= #1 1'b0; NUM = #1 4'b0000; //still shows F
    @(posedge clk);
    reset <= #1 1'b1; // all displays show 0
    end
    endmodule