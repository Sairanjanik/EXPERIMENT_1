module gate(a,b,w1,w2,w3,w4,w5,w6,w7);
       input a,b;
       output w1,w2,w3,w4,w5,w6,w7;
       and g1(w1,a,b);
       or g2(w2,a,b);
       not g3(w3,a);
       xor g4(w4,a,b);
       xnor g5(w5,a,b);
 nand g6(w6,a,b);
 nor g7(w7,a,b);
endmodule
