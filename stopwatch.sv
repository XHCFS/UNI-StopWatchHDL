module stopwatch(input wire clk_in, REVERSE,START,RESET,SPEED_UP,SPEED_DOWN,ADD,SUBTRACT,output wire [16:1]Q);
    wire enableCondition1,enableCondition2,enableCondition3;
	wire enableCounter1,enableCounter2,enableCounter3;
    wire permitter;
	wire [16:1]values;
	wire [16:1]values_from_adder;
    wire ON_OFF;
    wire [16:1]set;
    wire [16:1]reset;
    reg [15:0] array[1:0];
    wire index_RESET;
    wire selector;
    wire signal;
    wire ENABLE_R;
    wire [15:0]PEV_Q;


    initial begin
        array[0] = 16'b0001_0000_0010_0000; // 1020 BCD binary
        array[1] = 16'b0100_1001_0011_0000; // 4930 BCD binary
    end 
	
    wire START_i;
    not(START_i,START);
//  lat l(REVERSE,START_i,REVERSE_SIGNAL);
    //boolean_count_mode countMode(START,SPEED_UP,SPEED_DOWN);
    clock_signals cs(clk_in,SPEED_DOWN,SPEED_UP,clk);
    FullAdderModule fa11(ADD,SUBTRACT,PEV_Q,values_from_adder[16:1],signal);

    bool_equation_reset_values b55(RESET,REVERSE,ADD,signal,index_RESET);
    or(selector,RESET,signal);
	 
    m3216 mx(values_from_adder[16:1],array[index_RESET],selector,values[16:1]);

    or(permitter,ADD,SUBTRACT,RESET);
    loader lo(permitter,values[16:1],set[16:1],reset[16:1]);

    wire REVERSE_i;
	not(REVERSE_i,REVERSE);
    comparator c12(array[REVERSE_i],Q[16:1],force_stop_signal);
	 
	 
	 
    not(force_stop_signal_i,force_stop_signal);
    and(ON_OFF,START,force_stop_signal_i);
	 
    c0_9 c1(clk,ON_OFF,REVERSE,set[4:1],reset[4:1],Q[4:1] );
	 
    boolean_circuit_4 en1(REVERSE,Q[1],Q[2],Q[3],Q[4],enableCondition1);
	and(enableCounter1,ON_OFF,enableCondition1);
	 
    c0_5 c2(clk,enableCounter1,REVERSE,set[8:5],reset[8:5] ,Q[8:5]);
	 
    boolean_circuit_7 en2(REVERSE,Q[5],Q[6],Q[7],Q[8],enableCondition2);
	and(enableCounter2,ON_OFF,enableCondition1,enableCondition2);

    c0_9 c3(clk,enableCounter2,REVERSE,set[12:9],reset[12:9],Q[12:9]);
	 
    boolean_circuit_11 en3(REVERSE,Q[9],Q[10],Q[11],Q[12],enableCondition3);
	and(enableCounter3,ON_OFF,enableCondition1,enableCondition2,enableCondition3);

    c1_4 c4(clk,enableCounter3,REVERSE,set[16:13],reset[16:13],Q[16:13]);


    not(ENABLE_R,clk);
    registor16b R1(ENABLE_R,Q,PEV_Q);
	 
endmodule