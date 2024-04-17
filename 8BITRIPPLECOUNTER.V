module fa(a,b,cin,sum,carry);
       input a,b,cin;
       output sum,carry;
       wire w1,w2,w3;
       xor g1(w1,a,b);
       and g2(w3,a,b);
       xor g3(sum,w1,cin);
       and g4(w2,w1,cin);
       or g5(carry,w2,w3);
 endmodule
module rca(a,b,cin,sum,cout);
        input[3:0]a,b;
        input cin;
       output [3:0]sum;
        output cout;
        wire w1,w2,w3;
      fa g1(.a(a[0]),
            .b(b[0]),
            .cin(cin),
            .sum(sum[0]),
            .carry(c1)
            );
     fa g2(.a(a[1]),
           .b(b[1]),
           .cin(c1), 
           .sum(sum[1]),
            .carry(c2)
             );
       fa g3(.a(a[2]),
             .b(b[2]),
             .cin(c2),
             .sum(sum[2]),
             .carry(c3)
             );
        fa g4(.a(a[3]),
              .b(b[3]),
              .cin(c3),
              .sum(sum[3]),
              .carry(cout)
              );
 endmodule          
