// Module Name: FullAdder
// Structural Flow Code

module HalfAdder(sum, c_out, A, B);
    output sum;
    output c_out;
    input A;
    input B;
    xor(sum, A, B);
    and(c_out, A, B);
endmodule

module FullAdder(sum, c_out, i1, i2,c_in);
    output sum;
    output c_out;
    input i1;
    input i2;
    input c_in;
    wire s1,c1,c2;
    HalfAdder HA1(s1, c1, i1, i2);
    HalfAdder HA2(sum, c2 ,s1,c_in);
    or(c_out,c1,c2);
endmodule

// Behavioural Modelling

module Full_Adder (
    input A, // First input bit
    input B, // Second input bit
    input Cin, // Carry input
    output reg Sum, // Sum output
    output reg Cout // Carry output
    );
    // Behavioral modeling using always block
    always @(*) begin
    Sum = A ^ B ^ Cin; // XOR for Sum
    Cout = (A & B) | (B & Cin) | (Cin & A); // OR of three AND gates for Carry
    end
endmodule

