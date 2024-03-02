module lab5(output logic an0, an1, an2, an3, an4, an5, an6, an7,
a, b, c, d, e, f, g, dp,
input [2:0] sel, [3:0] num
);
always_comb begin
    case(sel)
      3'b000: begin an0 = 0; an1 = 1; an2 = 1; an3 = 1; an4 = 1; an5 = 1; an6 = 1; an7 = 1; end
      3'b001: begin an0 = 1; an1 = 0; an2 = 1; an3 = 1; an4 = 1; an5 = 1; an6 = 1; an7 = 1; end
      3'b010: begin an0 = 1; an1 = 1; an2 = 0; an3 = 1; an4 = 1; an5 = 1; an6 = 1; an7 = 1; end
      3'b011: begin an0 = 1; an1 = 1; an2 = 1; an3 = 0; an4 = 1; an5 = 1; an6 = 1; an7 = 1; end
      3'b100: begin an0 = 1; an1 = 1; an2 = 1; an3 = 1; an4 = 0; an5 = 1; an6 = 1; an7 = 1; end
      3'b101: begin an0 = 1; an1 = 1; an2 = 1; an3 = 1; an4 = 1; an5 = 0; an6 = 1; an7 = 1; end
      3'b110: begin an0 = 1; an1 = 1; an2 = 1; an3 = 1; an4 = 1; an5 = 1; an6 = 0; an7 = 1; end
      3'b111: begin an0 = 1; an1 = 1; an2 = 1; an3 = 1; an4 = 1; an5 = 1; an6 = 1; an7 = 0; end
    endcase
end
always_comb begin
    case(num)
    4'b0000: begin a = 0; b = 0; c = 0; d = 0; e = 0; f = 0; g = 1; dp = 1; end
    4'b0001: begin a = 1; b = 0; c = 0; d = 1; e = 1; f = 1; g = 1; dp = 1; end
    4'b0010: begin a = 0; b = 0; c = 1; d = 0; e = 0; f = 1; g = 0; dp = 1; end
    4'b0011: begin a = 0; b = 0; c = 0; d = 0; e = 1; f = 1; g = 0; dp = 1; end
    4'b0100: begin a = 1; b = 0; c = 0; d = 1; e = 1; f = 0; g = 0; dp = 1; end
    4'b0101: begin a = 0; b = 1; c = 0; d = 0; e = 1; f = 0; g = 0; dp = 1; end
    4'b0110: begin a = 0; b = 1; c = 0; d = 0; e = 0; f = 0; g = 0; dp = 1; end
    4'b0111: begin a = 0; b = 0; c = 0; d = 1; e = 1; f = 1; g = 1; dp = 1; end
    4'b1000: begin a = 0; b = 0; c = 0; d = 0; e = 0; f = 0; g = 0; dp = 1; end
    4'b1001: begin a = 0; b = 0; c = 0; d = 0; e = 1; f = 0; g = 0; dp = 1; end
    4'b1010: begin a = 0; b = 0; c = 0; d = 1; e = 0; f = 0; g = 0; dp = 1; end
    4'b1011: begin a = 1; b = 1; c = 0; d = 0; e = 0; f = 0; g = 0; dp = 1; end
    4'b1100: begin a = 0; b = 1; c = 1; d = 0; e = 0; f = 0; g = 1; dp = 1; end
    4'b1101: begin a = 1; b = 0; c = 0; d = 0; e = 0; f = 1; g = 0; dp = 1; end
    4'b1110: begin a = 0; b = 1; c = 1; d = 0; e = 0; f = 0; g = 0; dp = 1; end
    4'b1111: begin a = 0; b = 1; c = 1; d = 1; e = 0; f = 0; g = 0; dp = 1; end
    endcase
end
endmodule
    