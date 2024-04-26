module DFF(input logic clk, reset, D, output logic Q);
always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
        Q <= 0;
    end
    else begin
        Q <= D;
    end
end
endmodule
module lab9(input logic clk, reset, valid_in, bit_value, [2:0] bit_index,
output logic [7:0] an, logic [6:0] segments);
logic [1:0] c_state, n_state;
logic valid_out;
logic [7:0] X;
logic [6:0] seg1, seg2;
logic [17:0] clkdiv, din;
//Generating 18 bit clock
DFF UUT (
    .clk(clk),
    .reset(reset),
    .D(din[0]),
    .Q(clkdiv[0])
);
genvar i;
generate
for (i = 1; i < 18; i=i+1) 
begin
    DFF UUT2 (
        .clk(clkdiv[i-1]),
        .reset(reset),
        .D(din[i]),
        .Q(clkdiv[i])
    );
    end
endgenerate;
assign din = ~clkdiv;
parameter S0=2'b00, S1=2'b01, S2=2'b10, S3=2'b11;
//state register
always_ff @ (posedge clk or posedge reset)
begin
//reset is active high
if (reset)
c_state <= S0;
else
c_state <= n_state;
end
//next_state always block
always_comb
begin
case (c_state)
S0: begin valid_out = 0; if (valid_in) n_state = S1; else n_state = S0; end
S1: n_state = S2;
S2: n_state = S3;
S3: begin n_state = S0; valid_out = 1; end
default: n_state = S0;
endcase
end
always_ff @(posedge clk or posedge reset) begin
if (reset) begin
    X <= 8'b00000000;
end
else if (valid_in & c_state == S0) begin
    X <= (X & ~(1<<bit_index)) | (bit_value << bit_index);
end
end

always_comb begin
//Segment encoders
case(X[3:0])
    4'b0000: seg1 = 7'b0000001;
    4'b0001: seg1 = 7'b1001111; 
    4'b0010: seg1 = 7'b0010010;
    4'b0011: seg1 = 7'b0000110; 
    4'b0100: seg1 = 7'b1001100; 
    4'b0101: seg1 = 7'b0100100;
    4'b0110: seg1 = 7'b0100000;
    4'b0111: seg1 = 7'b0001111;
    4'b1000: seg1 = 7'b0000000;
    4'b1001: seg1 = 7'b0000100;
    4'b1010: seg1 = 7'b0001000;
    4'b1011: seg1 = 7'b1100000;
    4'b1100: seg1 = 7'b0110001;
    4'b1101: seg1 = 7'b1000010;
    4'b1110: seg1 = 7'b0110000;
    4'b1111: seg1 = 7'b0111000;
    default: seg1 = 7'b1111111;
endcase
case(X[7:4])
    4'b0000: seg2 = 7'b0000001;
    4'b0001: seg2 = 7'b1001111; 
    4'b0010: seg2 = 7'b0010010;
    4'b0011: seg2 = 7'b0000110; 
    4'b0100: seg2 = 7'b1001100; 
    4'b0101: seg2 = 7'b0100100;
    4'b0110: seg2 = 7'b0100000;
    4'b0111: seg2 = 7'b0001111;
    4'b1000: seg2 = 7'b0000000;
    4'b1001: seg2 = 7'b0000100;
    4'b1010: seg2 = 7'b0001000;
    4'b1011: seg2 = 7'b1100000;
    4'b1100: seg2 = 7'b0110001;
    4'b1101: seg2 = 7'b1000010;
    4'b1110: seg2 = 7'b0110000;
    4'b1111: seg2 = 7'b0111000;
    default: seg1 = 7'b1111111;
endcase
case(clkdiv[17])
    1'b0: begin segments = seg1; an = 8'b11111110; end
    1'b1: begin segments = seg2; an = 8'b11111101; end
    default: begin segments = 7'b1111111; an = 8'b11111111; end
endcase
end
endmodule