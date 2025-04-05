// Test Bench

module FA_TB;
reg a, b, c;
wire sum, carry;
// Instantiate the Unit Under Test (UUT)
FA_structural uut (.a(a), .b(b),.c(c), .sum(sum), .carry(carry));
initial begin
// Initialize Inputs
a = 0; b = 0; c=0;
#100 a = 0; b = 0; c=1;
#100 a = 0; b = 1; c=0;
#100 a = 0; b = 1; c=1;
#100 a = 1; b = 0; c=0;
#100 a = 1; b = 0; c=1;
#100 a = 1; b = 1; c=0;
#100 a = 1; b = 1; c=1;
end
endmodule