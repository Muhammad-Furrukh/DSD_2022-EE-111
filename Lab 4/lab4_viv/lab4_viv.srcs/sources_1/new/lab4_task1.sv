module lab4_task1(input [1:0] a,  b, 
output logic red, blue, green);
always_comb
begin
if (a > b) begin
blue = 1;
green = 1;
red = 0;
end
else if (a == b) begin 
blue = 1;
red = 1;
green = 0;
end
else begin 
blue = 0;
red = 1;
green = 1;
end
end
endmodule
