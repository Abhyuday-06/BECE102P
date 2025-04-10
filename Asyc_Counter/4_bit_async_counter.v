module upordown_counter( Clk, reset, UpOrDown, Count );
    input Clk,reset,UpOrDown;
    output [3 : 0] Count;
    reg [3 : 0] Count = 0;
    always @(posedge(Clk) or posedge(reset))
    begin
        if(reset == 1)
            Count <= 0;
        else
            if(UpOrDown == 1) //Up mode selected
                if(Count == 15)
                    Count <= 0;
                else
		    Count <= Count + 1; //Increment Counter
            else //Down mode selected
		if(Count == 0)
                    Count <= 15;
		else
		    Count <= Count - 1; //Decrement counter
    end
endmodule