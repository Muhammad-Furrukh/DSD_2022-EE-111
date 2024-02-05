module lab2(output logic x, y,
            input logic a, b, c
            );
            wire o1, o2, o3, o4;
            not n1(o1, c);
            or r1(o2, a, b);
            nand na1(o3, a, b);
            xor x1(x, o1, o2);
            xor x2(o4, o3, o2);
            and a1(y, o2, o4);
endmodule