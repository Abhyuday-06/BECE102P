module adder_4bit_tb();
    reg [3:0] A;
    reg [3:0] B;
    wire [3:0] S;
    wire Cout;
    adder_4bit uut (
        .A(A), 
        .B(B), 
        .S(S), 
        .Cout(Cout)
    );  
/*
    initial
    begin
    A = 5;
    B = 5;
    #100;
    A = 15;
    B = 12;
    #100;
    end
endmodule
*/
    integer i, j; 
    initial 
    begin
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                A = i;
                B = j;
                #10;
            end
        end
        #10;
    end
endmodule

