module lab9_tb();
logic clk, valid_in, bit_value, valid_out, reset; 
logic [2:0] bit_index;
logic [7:0] X, an; 
logic [6:0] segments;
logic [1:0] c_state, n_state;
logic [1:0] clkdiv;
lab9_sim UUT(
    .clk(clk),
    .reset(reset),
    .valid_in(valid_in),
    .bit_value(bit_value),
    .bit_index(bit_index),
    .valid_out(valid_out),
    .an(an),
    .segments(segments),
    .c_state(c_state),
    .n_state(n_state),
    .X(X),
    .clkdiv(clkdiv)
);
initial begin
clk = 1;
forever #5 clk = ~ clk;
end
initial begin
    reset <= 1; valid_in = 0; //c_state S0. All segments off
    @(posedge clk)
    @(posedge clk)
    bit_value = 1; bit_index = 000; reset <= 0; //segments are still off
    @(posedge clk)
    @(posedge clk)
    valid_in = 1; //display shows 1
    @(posedge clk)
    valid_in = 0;
end
endmodule