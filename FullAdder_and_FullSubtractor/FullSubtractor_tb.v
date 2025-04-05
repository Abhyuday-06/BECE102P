
// Test Bench

module fullsub_tb();
wire diff,borrow;
reg a,b,bin;
fullstruct uut(diff,borrow,a,b,bin);
initial
begin
a=0;b=0;bin=0;
#10 a=0;b=0;bin=1;
#10 a=0;b=1;bin=0;#10 a=0;b=1;bin=1;
#10 a=1;b=0;bin=0;
#10 a=1;b=0;bin=1;
#10 a=1;b=1;bin=0;
#10 a=1;b=1;bin=1;
end
endmodule