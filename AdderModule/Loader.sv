module Loader(
    input Sreset,
    input reverse,
    input signalAdd,
    input min_1[3],
    input min_2[3],
    output  preset[15:0],//0-4-->5-11-->12-15
    output  reset[15:0]
);

//Defining variables //

//Up limit
wire upLimit[15:0]='{0,0,0,0,1,1,0,0,1,0,0,1,0,0,1,0};  //    49:30

//down limit
wire downLimit[15:0]='{0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0};//  10:20


//Add signal
wire add_signal[15:0]='{0,0,0,0,0,0,0,0,min_1[0],min_1[1],min_1[2],min_1[3],min_2[0],min_2[1],min_2[2],min_2[3]};

//temps:
    reg  presetT[15:0];
    wire  [15:0]resetT;
//output:
always@(Sreset||signalAdd)
begin
    if(reverse)
    begin
        assign presetT = upLimit;    //got to 49:30
    end
    else if(!(reverse))
        begin
        assign presetT = downLimit;  //go to 10:20
    end
    else if(signalAdd &&Sreset)
        begin
        assign presetT = add_signal;  //add signal
    end
end
genvar i;
for(i=0;i<=15;i++)
begin
    and(preset[i],Sreset,presetT[i]);
    and(reset[i],Sreset,!(preset[i]));
end

endmodule
