module lab3_tb();
logic a1; 
logic b1;
logic c1;
logic x1;
logic y1;

full_adder UUT(
    .a(a1),
    .b(b1),
    .c(c1),
    .x(x1),
    .y(y1)
);
initial 
begin
    a1 = 0; b1 = 0; c1 = 0;
    #10;
    a1 = 0; b1 = 0; c1 = 1;
    #10;
    a1 = 0; b1 = 1; c1 = 0;
    #10;
    a1 = 0; b1 = 1; c1 = 1;
    #10; 
    a1 = 1; b1 = 0; c1 = 0;
    #10;
    a1 = 1; b1 = 0; c1 = 1;
    #10; 
    a1 = 1; b1 = 1; c1 = 0;
    #10;
    a1 = 1; b1 = 1; c1 = 1;
    #10;     
end
endmodule
