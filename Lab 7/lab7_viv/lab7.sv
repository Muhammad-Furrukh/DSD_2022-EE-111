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
module lab7(input logic write, reset, clk, [3:0] num, [2:0] sel,
output logic [7:0] an, [6:0] segment);
logic [6:0] segment1, segment2, segment3, segment4, segment5, segment6, segment7, segment8;
logic [17:0] din, clkdiv;
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
always_comb begin
if (~write) begin
    case(clkdiv[17:15])
     3'b000: begin an = 8'b11111110; segment = segment1; end
     3'b001: begin an = 8'b11111101; segment = segment2; end
     3'b010: begin an = 8'b11111011; segment = segment3; end
     3'b011: begin an = 8'b11110111; segment = segment4; end
     3'b100: begin an = 8'b11101111; segment = segment5; end
     3'b101: begin an = 8'b11011111; segment = segment6; end
     3'b110: begin an = 8'b10111111; segment = segment7; end
     3'b111: begin an = 8'b01111111; segment = segment8; end
     default: begin an = 8'b11111110; segment = 7'b0000001; end
     endcase
end
else begin
case(sel)
      3'b000: begin an = 8'b11111110; segment = segment1; end
      3'b001: begin an = 8'b11111101; segment = segment2; end
      3'b010: begin an = 8'b11111011; segment = segment3; end
      3'b011: begin an = 8'b11110111; segment = segment4; end
      3'b100: begin an = 8'b11101111; segment = segment5; end
      3'b101: begin an = 8'b11011111; segment = segment6; end
      3'b110: begin an = 8'b10111111; segment = segment7; end
      3'b111: begin an = 8'b01111111; segment = segment8; end
      default: begin an = 8'b11111110; segment = 7'b0000001; end
  endcase
end
end
 always_ff @(posedge clk or posedge reset) begin
     if (reset) begin
     segment1 <= 00000001;
     end
     else if (write & ~an[0]) begin
     case(num)
     4'b0000: segment1 <= #1 7'b0000001;
     4'b0001: segment1 <= #1 7'b1001111; 
     4'b0010: segment1 <= #1 7'b0010010;
     4'b0011: segment1 <= #1 7'b0000110; 
     4'b0100: segment1 <= #1 7'b1001100; 
     4'b0101: segment1 <= #1 7'b0100100;
     4'b0110: segment1 <= #1 7'b0100000;
     4'b0111: segment1 <= #1 7'b0001111;
     4'b1000: segment1 <= #1 7'b0000000;
     4'b1001: segment1 <= #1 7'b0000100;
     4'b1010: segment1 <= #1 7'b0001000;
     4'b1011: segment1 <= #1 7'b1100000;
     4'b1100: segment1 <= #1 7'b0110001;
     4'b1101: segment1 <= #1 7'b1000010;
     4'b1110: segment1 <= #1 7'b0110000;
     4'b1111: segment1 <= #1 7'b0111000;
     endcase
     end
  end
  always_ff @(posedge clk or posedge reset) begin
     if (reset) begin
     segment2 <= 00000001;
     end
     else if (write & ~an[1]) begin
     case(num)
     4'b0000: segment2 <= #1 7'b0000001;
     4'b0001: segment2 <= #1 7'b1001111;
     4'b0010: segment2 <= #1 7'b0010010;
     4'b0011: segment2 <= #1 7'b0000110;
     4'b0100: segment2 <= #1 7'b1001100;
     4'b0101: segment2 <= #1 7'b0100100;
     4'b0110: segment2 <= #1 7'b0100000;
     4'b0111: segment2 <= #1 7'b0001111;
     4'b1000: segment2 <= #1 7'b0000000;
     4'b1001: segment2 <= #1 7'b0000100;
     4'b1010: segment2 <= #1 7'b0001000;
     4'b1011: segment2 <= #1 7'b1100000;
     4'b1100: segment2 <= #1 7'b0110001;
     4'b1101: segment2 <= #1 7'b1000010;
     4'b1110: segment2 <= #1 7'b0110000;
     4'b1111: segment2 <= #1 7'b0111000;
     endcase
     end
  end
  always_ff @(posedge clk or posedge reset) begin
     if (reset) begin
     segment3 <= 00000001;
     end
     else if (write & ~an[2]) begin
     case(num)
     4'b0000: segment3 <= #1 7'b0000001;
     4'b0001: segment3 <= #1 7'b1001111;
     4'b0010: segment3 <= #1 7'b0010010;
     4'b0011: segment3 <= #1 7'b0000110;
     4'b0100: segment3 <= #1 7'b1001100;
     4'b0101: segment3 <= #1 7'b0100100;
     4'b0110: segment3 <= #1 7'b0100000;
     4'b0111: segment3 <= #1 7'b0001111;
     4'b1000: segment3 <= #1 7'b0000000;
     4'b1001: segment3 <= #1 7'b0000100;
     4'b1010: segment3 <= #1 7'b0001000;
     4'b1011: segment3 <= #1 7'b1100000;
     4'b1100: segment3 <= #1 7'b0110001;
     4'b1101: segment3 <= #1 7'b1000010;
     4'b1110: segment3 <= #1 7'b0110000;
     4'b1111: segment3 <= #1 7'b0111000;
     endcase
     end
  end
  always_ff @(posedge clk or posedge reset) begin
     if (reset) begin
     segment4 <= 00000001;
     end
     else if (write & ~an[3]) begin
     case(num)
     4'b0000: segment4 <= #1 7'b0000001;
     4'b0001: segment4 <= #1 7'b1001111;
     4'b0010: segment4 <= #1 7'b0010010;
     4'b0011: segment4 <= #1 7'b0000110;
     4'b0100: segment4 <= #1 7'b1001100;
     4'b0101: segment4 <= #1 7'b0100100;
     4'b0110: segment4 <= #1 7'b0100000;
     4'b0111: segment4 <= #1 7'b0001111;
     4'b1000: segment4 <= #1 7'b0000000;
     4'b1001: segment4 <= #1 7'b0000100;
     4'b1010: segment4 <= #1 7'b0001000;
     4'b1011: segment4 <= #1 7'b1100000;
     4'b1100: segment4 <= #1 7'b0110001;
     4'b1101: segment4 <= #1 7'b1000010;
     4'b1110: segment4 <= #1 7'b0110000;
     4'b1111: segment4 <= #1 7'b0111000;
     endcase
     end
  end
  always_ff @(posedge clk or posedge reset) begin
     if (reset) begin
     segment5 <= 00000001;
     end
     else if (write & ~an[4]) begin
     case(num)
     4'b0000: segment5 <= #1 7'b0000001;
     4'b0001: segment5 <= #1 7'b1001111;
     4'b0010: segment5 <= #1 7'b0010010;
     4'b0011: segment5 <= #1 7'b0000110;
     4'b0100: segment5 <= #1 7'b1001100;
     4'b0101: segment5 <= #1 7'b0100100;
     4'b0110: segment5 <= #1 7'b0100000;
     4'b0111: segment5 <= #1 7'b0001111;
     4'b1000: segment5 <= #1 7'b0000000;
     4'b1001: segment5 <= #1 7'b0000100;
     4'b1010: segment5 <= #1 7'b0001000;
     4'b1011: segment5 <= #1 7'b1100000;
     4'b1100: segment5 <= #1 7'b0110001;
     4'b1101: segment5 <= #1 7'b1000010;
     4'b1110: segment5 <= #1 7'b0110000;
     4'b1111: segment5 <= #1 7'b0111000;
     endcase
     end
  end
  always_ff @(posedge clk or posedge reset) begin
     if (reset) begin
     segment6 <= 00000001;
     end
     else if (write & ~an[5]) begin
     case(num)
     4'b0000: segment6 <= #1 7'b0000001;
     4'b0001: segment6 <= #1 7'b1001111;
     4'b0010: segment6 <= #1 7'b0010010;
     4'b0011: segment6 <= #1 7'b0000110;
     4'b0100: segment6 <= #1 7'b1001100;
     4'b0101: segment6 <= #1 7'b0100100;
     4'b0110: segment6 <= #1 7'b0100000;
     4'b0111: segment6 <= #1 7'b0001111;
     4'b1000: segment6 <= #1 7'b0000000;
     4'b1001: segment6 <= #1 7'b0000100;
     4'b1010: segment6 <= #1 7'b0001000;
     4'b1011: segment6 <= #1 7'b1100000;
     4'b1100: segment6 <= #1 7'b0110001;
     4'b1101: segment6 <= #1 7'b1000010;
     4'b1110: segment6 <= #1 7'b0110000;
     4'b1111: segment6 <= #1 7'b0111000;
     endcase
     end
  end
  always_ff @(posedge clk or posedge reset) begin
     if (reset) begin
     segment7 <= 00000001;
     end
     else if (write & ~an[6]) begin
     case(num)
     4'b0000: segment7 <= #1 7'b0000001;
     4'b0001: segment7 <= #1 7'b1001111;
     4'b0010: segment7 <= #1 7'b0010010;
     4'b0011: segment7 <= #1 7'b0000110;
     4'b0100: segment7 <= #1 7'b1001100;
     4'b0101: segment7 <= #1 7'b0100100;
     4'b0110: segment7 <= #1 7'b0100000;
     4'b0111: segment7 <= #1 7'b0001111;
     4'b1000: segment7 <= #1 7'b0000000;
     4'b1001: segment7 <= #1 7'b0000100;
     4'b1010: segment7 <= #1 7'b0001000;
     4'b1011: segment7 <= #1 7'b1100000;
     4'b1100: segment7 <= #1 7'b0110001;
     4'b1101: segment7 <= #1 7'b1000010;
     4'b1110: segment7 <= #1 7'b0110000;
     4'b1111: segment7 <= #1 7'b0111000;
     endcase
     end
  end
  always_ff @(posedge clk or posedge reset) begin
     if (reset) begin
     segment8 <= 00000001;
     end
     else if (write & ~an[7]) begin
     case(num)
     4'b0000: segment8 <= #1 7'b0000001;
     4'b0001: segment8 <= #1 7'b1001111;
     4'b0010: segment8 <= #1 7'b0010010;
     4'b0011: segment8 <= #1 7'b0000110;
     4'b0100: segment8 <= #1 7'b1001100;
     4'b0101: segment8 <= #1 7'b0100100;
     4'b0110: segment8 <= #1 7'b0100000;
     4'b0111: segment8 <= #1 7'b0001111;
     4'b1000: segment8 <= #1 7'b0000000;
     4'b1001: segment8 <= #1 7'b0000100;
     4'b1010: segment8 <= #1 7'b0001000;
     4'b1011: segment8 <= #1 7'b1100000;
     4'b1100: segment8 <= #1 7'b0110001;
     4'b1101: segment8 <= #1 7'b1000010;
     4'b1110: segment8 <= #1 7'b0110000;
     4'b1111: segment8 <= #1 7'b0111000;
     endcase
     end
  end
endmodule