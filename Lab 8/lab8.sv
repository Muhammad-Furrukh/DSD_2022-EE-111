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
module lab8(input logic direction, reset, clk, write, [3:0] num, [3:0] sel,
output logic [6:0] segments, [7:0] an);
logic [3:0] q0, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14, q15;
logic [3:0] qt0, qt1, qt2, qt3, qt4, qt5, qt6, qt7, qt8, qt9, qt10, qt11, qt12, qt13, qt14, qt15;
logic [27:0] clkdiv;
logic [3:0] segment_enc;
logic [27:0] din;

//Generating 28 bit clock
DFF UUT (
    .clk(clk),
    .reset(reset),
    .D(din[0]),
    .Q(clkdiv[0])
);
genvar i;
generate
for (i = 1; i < 28; i=i+1) 
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

//Controlling the flow of information
always_ff @(posedge clk or posedge reset) begin
if (reset) begin
    q0 <= 4'b1111;
    q1 <= 4'b1111;
    q2 <= 4'b1111;
    q3 <= 4'b1111;
    q4 <= 4'b1111;
    q5 <= 4'b1111;
    q6 <= 4'b1111;
    q7 <= 4'b1111;
    q8 <= 4'b1111;
    q9 <= 4'b1111;
    q10 <= 4'b1111;
    q11 <= 4'b1111;
    q12 <= 4'b1111;
    q13 <= 4'b1111;
    q14 <= 4'b1111;
    q15 <= 4'b1111;
end
else if (write) begin
    case(sel)
    4'b0000: q0 <= num;
    4'b0001: q1 <= num;
    4'b0010: q2 <= num;
    4'b0011: q3 <= num;
    4'b0100: q4 <= num;
    4'b0101: q5 <= num;
    4'b0110: q6 <= num;
    4'b0111: q7 <= num; 
    4'b1000: q8 <= num;
    4'b1001: q9 <= num;
    4'b1010: q10 <= num;   
    4'b1011: q11 <= num;
    4'b1100: q12 <= num; 
    4'b1101: q13 <= num;
    4'b1110: q14 <= num;
    4'b1111: q15 <= num; 
    endcase
end
end
always_ff @(posedge clkdiv[27]) begin
if (write) begin
qt0 <= q0;
qt1 <= q1;
qt2 <= q2;
qt3 <= q3;
qt4 <= q4;
qt5 <= q5;
qt6 <= q6;
qt7 <= q7;
qt8 <= q8;
qt9 <= q9;
qt10 <= q10;
qt11 <= q11;
qt12 <= q12;
qt13 <= q13;
qt14 <= q14;
qt15 <= q15;
end
else if (~write) begin
    if (direction) begin
        qt0 <= qt1;
        qt1 <= qt2;
        qt2 <= qt3;
        qt3 <= qt4;
        qt4 <= qt5;
        qt5 <= qt6;
        qt6 <= qt7;
        qt7 <= qt8;
        qt8 <= qt9;
        qt9 <= qt10;
        qt10 <= qt11;
        qt11 <= qt12;
        qt12 <= qt13;
        qt13 <= qt14;
        qt14 <= qt15;
        qt15 <= qt0;
    end 
    else begin
        qt1 <= qt0;
        qt2 <= qt1;
        qt3 <= qt2;
        qt4 <= qt3;
        qt5 <= qt4;
        qt6 <= qt5;
        qt7 <= qt6;
        qt8 <= qt7;
        qt9 <= qt8;
        qt10 <= qt9;
        qt11 <= qt10;
        qt12 <= qt11;
        qt13 <= qt12;
        qt14 <= qt13;
        qt15 <= qt14;
        qt0 <= qt15;
    end
end 
end 
always_comb begin
    if (~write) begin
    case(clkdiv[17:15])
     3'b000: begin an = 8'b11111110; segment_enc = qt0; end
     3'b001: begin an = 8'b11111101; segment_enc = qt1; end
     3'b010: begin an = 8'b11111011; segment_enc = qt2; end
     3'b011: begin an = 8'b11110111; segment_enc = qt3; end
     3'b100: begin an = 8'b11101111; segment_enc = qt4; end
     3'b101: begin an = 8'b11011111; segment_enc = qt5; end
     3'b110: begin an = 8'b10111111; segment_enc = qt6; end
     3'b111: begin an = 8'b01111111; segment_enc = qt7; end
     default: begin an = 8'b11111110; segment_enc = 4'b1111; end
     endcase
     end
     else begin
     an = 8'b11111111; segment_enc = 4'b1111;
     end
end
always_comb begin
case(segment_enc)
     4'b0000: segments = 7'b0000001;
     4'b0001: segments = 7'b1001111; 
     4'b0010: segments = 7'b0010010;
     4'b0011: segments = 7'b0000110; 
     4'b0100: segments = 7'b1001100; 
     4'b0101: segments = 7'b0100100;
     4'b0110: segments = 7'b0100000;
     4'b0111: segments = 7'b0001111;
     4'b1000: segments = 7'b0000000;
     4'b1001: segments = 7'b0000100;
     4'b1010: segments = 7'b0001000;
     4'b1011: segments = 7'b1100000;
     4'b1100: segments = 7'b0110001;
     4'b1101: segments = 7'b1000010;
     4'b1110: segments = 7'b0110000;
     4'b1111: segments = 7'b1111111;
endcase
end
endmodule