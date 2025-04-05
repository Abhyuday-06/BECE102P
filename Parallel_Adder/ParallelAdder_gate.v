module FullAdder(SUM, CARRY, A, B, Cin);
input A,B,Cin;
output SUM, CARRY;
wire W1, W2, W3, W4;
xor G1(W1, A, B);
xor G2(SUM, W1, Cin);
and G3(W2, B, Cin);
and G4(W3, B, Cin);
and G5(W4, A, B);
or G6(CARRY, W2, W3, W4);
endmodule


module adder_4bit(S, Cout, A, B);
input [3:0] A;
input [3:0] B;
output [3:0] S;
output Cout;
wire [3:1] C;
FullAdder FA0(S[0], C[1], A[0], B[0], 1'b0);
FullAdder FA1(S[1], C[2], A[1], B[1], C[1]);
FullAdder FA2(S[2], C[3], A[2], B[2], C[2]);
FullAdder FA3(S[3], Cout, A[3], B[3], C[3]);
endmodule

