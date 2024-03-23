module lab7_tb();
logic write, reset, clk;
logic [6:0] SEGMENT; 
logic [7:0] AN;
logic [3:0] NUM; logic [2:0] SEL;
logic [17:0] CLKDIV;
lab7 UUT (
    .clk(clk),
    .write(write),
    .reset(reset),
    .segment(SEGMENT),
    .an(AN),
    .num(NUM),
    .sel(SEL),
    .clkdiv(CLKDIV)
);
initial begin
clk = 1;
forever #5 clk = ~ clk;
end
initial begin
//All segments will show 0, first display is selected
    reset <= 1;
    write <= 1;
    SEL = 3'b000;
    @(posedge clk);
    reset <=# 1'b0; NUM = #1 4'b0000; //Shows 0
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0001; //Shows 1
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0010; //Shows 2
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0011; //Shows 3
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0100; //Shows 4
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0101; //Shows 5
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0110; //Shows 6
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0111; //Shows 7
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1000; //Shows 8
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1001; //Shows 9
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1010; //Shows A
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1011; //Shows B
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1100; //Shows C
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1101; //Shows D
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1110; //Shows E
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1111; //Shows F
    @(posedge clk);
    @(posedge clk);
    SEL = 3'b001; // Display 2 is selected. Shows 0
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0001; //Shows 1
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0010; //Shows 2
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0011; //Shows 3
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0100; //Shows 4
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0101; //Shows 5
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0110; //Shows 6
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0111; //Shows 7
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1000; //Shows 8
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1001; //Shows 9
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1010; //Shows A
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1011; //Shows B
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1100; //Shows C
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1101; //Shows D
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1110; //Shows E
    @(posedge clk);
    @(posedge clk);
    SEL = 3'b010; //Display 3 is selected. Shows 0
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0001; //Shows 1
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0010; //Shows 2
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0011; //Shows 3
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0100; //Shows 4
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0101; //Shows 5
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0110; //Shows 6
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0111; //Shows 7
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1000; //Shows 8
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1001; //Shows 9
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1010; //Shows A
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1011; //Shows B
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1100; //Shows C
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1101; //Shows D
    @(posedge clk);
    @(posedge clk);
    SEL = 3'b011; //Display 4 is selected. Shows 0
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0001; //Shows 1
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0010; //Shows 2
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0011; //Shows 3
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0100; //Shows 4
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0101; //Shows 5
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0110; //Shows 6
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0111; //Shows 7
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1000; //Shows 8
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1001; //Shows 9
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1010; //Shows A
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1011; //Shows B
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1100; //Shows C
    @(posedge clk);
    @(posedge clk);
    SEL = 3'b100; //Display 5 is selected. Shows 0
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0001; //Shows 1
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0010; //Shows 2
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0011; //Shows 3
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0100; //Shows 4
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0101; //Shows 5
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0110; //Shows 6
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0111; //Shows 7
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1000; //Shows 8
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1001; //Shows 9
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1010; //Shows A
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1011; //Shows B
    @(posedge clk);
    @(posedge clk);
    SEL = 3'b101; //Display 6 is selected. Shows 0
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0001; //Shows 1
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0010; //Shows 2
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0011; //Shows 3
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0100; //Shows 4
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0101; //Shows 5
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0110; //Shows 6
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0111; //Shows 7
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1000; //Shows 8
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1001; //Shows 9
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1010; //Shows A
    @(posedge clk);
    @(posedge clk);
    SEL = 3'b110; //Display 7 is selecetd. Shows 0
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0001; //Shows 1
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0010; //Shows 2
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0011; //Shows 3
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0100; //Shows 4
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0101; //Shows 5
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0110; //Shows 6
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0111; //Shows 7
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1000; //Shows 8
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1001; //Shows 9
    @(posedge clk);
    @(posedge clk);
    SEL = 3'b111; //Display 8 is selected. Shows 0
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0001; //Shows 1
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0010; //Shows 2
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0011; //Shows 3
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0100; //Shows 4
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0101; //Shows 5
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0110; //Shows 6
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b0111; //Shows 7
    @(posedge clk);
    @(posedge clk);
    NUM = #1 4'b1000; //Shows 8
    @(posedge clk);
    @(posedge clk);
    write <= 0; //All displays appear to be on and show the values stored in them
end
endmodule