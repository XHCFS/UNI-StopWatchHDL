module loader(input wire permit,input wire [16:1]values,output wire[16:1]set,reset);
    miniloader m1(permit,values[1],      set[1],   reset[1]);
    miniloader m2(permit,values[2],      set[2],   reset[2]);
    miniloader m3(permit,values[3],      set[3],   reset[3]);
    miniloader m4(permit,values[4],      set[4],   reset[4]);
    miniloader m5(permit,values[5],      set[5],   reset[5]);
    miniloader m6(permit,values[6],      set[6],   reset[6]);
    miniloader m7(permit,values[7],      set[7],   reset[7]);
    miniloader m8(permit,values[8],      set[8],   reset[8]);
    miniloader m9(permit,values[9],      set[9],   reset[9]);
    miniloader m10(permit,values[10],    set[10],  reset[10]);
    miniloader m11(permit,values[11],    set[11],  reset[11]);
    miniloader m12(permit,values[12],    set[12],  reset[12]);
    miniloader m13(permit,values[13],    set[13],  reset[13]);
    miniloader m14(permit,values[14],    set[14],  reset[14]);
    miniloader m15(permit,values[15],    set[15],  reset[15]);
    miniloader m16(permit,values[16],    set[16],  reset[16]);
endmodule