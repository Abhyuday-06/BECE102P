// Structural

module HalfAdder(sum, c_out, A, B);
    output sum;
    output c_out;
    input A;
    input B;
    xor(sum, A, B);
    and(c_out, A, B);
endmodule

// Behavioral

module HalfAdder(S, C, a, b);
    input a, b;
    output s, c;
    assign s = a ^ b;
    assign c = a & b;
endmodule
