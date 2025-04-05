module FA1(sum, carry, a, b, cin);
    input a, b, cin;
    output sum, carry;
    wire w1, w2, w3, w4;

    xor G1(w1, a, b);
    xor G2(sum, w1, cin);
    and G3(w2, a, cin);
    and G4(w3, b, cin);
    and G5(w4, a, b);
    or G6(carry, w2, w3, w4);
endmodule

module adder_4bit(sum, cout, a, b, cin);
    input [3:0] a, b;
    input cin;
    output [3:0] sum;
    output cout;
    wire [2:0] c;

    FA1 fa0(sum[0], c[0], a[0], b[0], cin);
    FA1 fa1(sum[1], c[1], a[1], b[1], c[0]);
    FA1 fa2(sum[2], c[2], a[2], b[2], c[1]);
    FA1 fa3(sum[3], cout, a[3], b[3], c[2]);
endmodule

module multiplier_4x4 (P, A, B);
    input [3:0] A, B;
    output [7:0] P;
    wire [23:0] W;

    and a1(P[0], A[0], B[0]);
    and a2(W[1], A[1], B[0]);
    and a3(W[2], A[2], B[0]);
    and a4(W[3], A[3], B[0]);
    and a5(W[4], A[0], B[1]);
    and a6(W[5], A[1], B[1]);
    and a7(W[6], A[2], B[1]);
    and a8(W[7], A[3], B[1]);
    and a9(W[8], A[0], B[2]);
    and a10(W[9], A[1], B[2]);
    and a11(W[10], A[2], B[2]);
    and a12(W[11], A[3], B[2]);
    and a13(W[12], A[0], B[3]);
    and a14(W[13], A[1], B[3]);
    and a15(W[14], A[2], B[3]);
    and a16(W[15], A[3], B[3]);

    adder_4bit PA1({W[18], W[17], W[16], P[1]}, W[19], {1'b0, W[3], W[2], W[1]}, {W[7], W[6], W[5], W[4]}, 1'b0);
    adder_4bit PA2({W[22], W[21], W[20], P[2]}, W[23], {W[19], W[18], W[17], W[16]}, {W[11], W[10], W[9], W[8]}, 1'b0);
    adder_4bit PA3({P[6], P[5], P[4], P[3]}, P[7], {W[23], W[22], W[21], W[20]}, {W[15], W[14], W[13], W[12]}, 1'b0);
endmodule

