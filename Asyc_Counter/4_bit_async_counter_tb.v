module tb_asyncount();
reg Clk=1'b0,reset=1'b0,UpOrDown;
wire [3 : 0] Count;
upordown_counter uut( Clk, reset, UpOrDown, Count );
always #1 Clk=~Clk;
always #60 reset=~reset;
initial
begin
UpOrDown=1;
#120 UpOrDown=0;
end
endmodule
