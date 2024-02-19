module lab3(output logic x, y,
input logic a, b, c);
always_comb
begin
x = (a | b) ^ (!c);
y = (~(a & b) ^ (a | b)) & (a | b);
end
endmodule