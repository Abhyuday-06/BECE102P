module multiplier_4x4_tb;
    reg [3:0] A;
    reg [3:0] B;
    wire [7:0] P;

    multiplier_4x4 uut(.P(P), .A(A), .B(B));

    initial begin
        A = 13; B = 11; #100;
        A = 10; B = 11; #100;
        A = 15; B = 12; #100;
        A = 14; B = 13; #100;
    end
endmodule
