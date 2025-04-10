// Full Subtractor

// Data Flow
module fs(diff,borrow,a,b,bin);
output diff,borrow;
input a,b,bin;
assign diff=(~a&~b&bin) | (~a&b&~bin) | (a&~b&~bin) | (a&b&bin);
assign borrow=(~a&b)| (~a&bin) | (b&bin);
endmodule

// Behavioral

module FullSubtractor (
input A, // Minuend
input B, // Subtrahend
input Bin, // Borrow in
output reg Diff, // Difference (as reg)
output reg Bout // Borrow out (as reg)
);
always @ (A or B or Bin) begin
// Difference is A XOR B XOR Bin
Diff = A ^ B ^ Bin;
// Borrow-out condition: Bout = (~A & B) | (~A & Bin) | (B & Bin)
Bout = (~A & B) | (~A & Bin) | (B & Bin);
end
endmodule

