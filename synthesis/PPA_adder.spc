*SPICE netlist created from BLIF module PPA_adder by blif2BSpice
.include /usr/local/share/qflow/tech/osu035/osu035_stdcells.sp
.subckt PPA_adder vdd gnd sum_comp_1[0] sum_comp_1[1] sum_comp_1[2] sum_comp_1[3] sum_comp_1[4] sum_comp_1[5] sum_comp_2[0] sum_comp_2[1] sum_comp_2[2] sum_comp_2[3] sum_comp_2[4] sum_comp_2[5] c_in result[0] result[1] result[2] result[3] result[4] result[5] c_out 
XINVX1_1 g4 _29_ vdd gnd INVX1
XNAND2X1_1 vdd _30_ gnd S4.c gen4.p NAND2X1
XNAND2X1_2 vdd S5.c gnd _29_ _30_ NAND2X1
XINVX1_2 g_5_4 _31_ vdd gnd INVX1
XNAND2X1_3 vdd _32_ gnd S4.c mod_5_0.p1 NAND2X1
XNAND2X1_4 vdd _0_ gnd _31_ _32_ NAND2X1
XINVX1_3 g5 _33_ vdd gnd INVX1
XNAND2X1_5 vdd _34_ gnd g4 gen5.p NAND2X1
XNAND2X1_6 vdd g_5_4 gnd _33_ _34_ NAND2X1
XAND2X2_1 vdd gnd gen5.p gen4.p mod_5_0.p1 AND2X2
XBUFX2_1 vdd gnd S1.s result[1] BUFX2
XBUFX2_2 vdd gnd S2.s result[2] BUFX2
XBUFX2_3 vdd gnd S3.s result[3] BUFX2
XBUFX2_4 vdd gnd S4.s result[4] BUFX2
XBUFX2_5 vdd gnd S5.s result[5] BUFX2
XBUFX2_6 vdd gnd _0_ c_out BUFX2
XBUFX2_7 vdd gnd S0.s result[0] BUFX2
XINVX1_4 Carry_in.g0 _1_ vdd gnd INVX1
XNAND2X1_7 vdd _2_ gnd Carry_in.p0 c_in NAND2X1
XNAND2X1_8 vdd Carry_in.g0_new gnd _1_ _2_ NAND2X1
XNOR2X1_1 vdd S0.h gnd _3_ c_in NOR2X1
XAND2X2_2 vdd gnd c_in S0.h _4_ AND2X2
XNOR2X1_2 vdd _4_ gnd S0.s _3_ NOR2X1
XNOR2X1_3 vdd S1.h gnd _5_ Carry_in.g0_new NOR2X1
XAND2X2_3 vdd gnd Carry_in.g0_new S1.h _6_ AND2X2
XNOR2X1_4 vdd _6_ gnd S1.s _5_ NOR2X1
XNOR2X1_5 vdd S2.h gnd _7_ S2.c NOR2X1
XAND2X2_4 vdd gnd S2.c S2.h _8_ AND2X2
XNOR2X1_6 vdd _8_ gnd S2.s _7_ NOR2X1
XNOR2X1_7 vdd S3.h gnd _9_ S3.c NOR2X1
XAND2X2_5 vdd gnd S3.c S3.h _10_ AND2X2
XNOR2X1_8 vdd _10_ gnd S3.s _9_ NOR2X1
XNOR2X1_9 vdd S4.h gnd _11_ S4.c NOR2X1
XAND2X2_6 vdd gnd S4.c S4.h _12_ AND2X2
XNOR2X1_10 vdd _12_ gnd S4.s _11_ NOR2X1
XNOR2X1_11 vdd S5.h gnd _13_ S5.c NOR2X1
XAND2X2_7 vdd gnd S5.c S5.h _14_ AND2X2
XNOR2X1_12 vdd _14_ gnd S5.s _13_ NOR2X1
XAND2X2_8 vdd gnd sum_comp_2[0] sum_comp_1[0] Carry_in.g0 AND2X2
XNOR2X1_13 vdd sum_comp_1[0] gnd _15_ sum_comp_2[0] NOR2X1
XINVX1_5 _15_ Carry_in.p0 vdd gnd INVX1
XNOR2X1_14 vdd Carry_in.g0 gnd S0.h _15_ NOR2X1
XAND2X2_9 vdd gnd sum_comp_2[1] sum_comp_1[1] g1 AND2X2
XNOR2X1_15 vdd sum_comp_1[1] gnd _16_ sum_comp_2[1] NOR2X1
XINVX1_6 _16_ gen1.p vdd gnd INVX1
XNOR2X1_16 vdd g1 gnd S1.h _16_ NOR2X1
XAND2X2_10 vdd gnd sum_comp_2[2] sum_comp_1[2] g2 AND2X2
XNOR2X1_17 vdd sum_comp_1[2] gnd _17_ sum_comp_2[2] NOR2X1
XINVX1_7 _17_ gen2.p vdd gnd INVX1
XNOR2X1_18 vdd g2 gnd S2.h _17_ NOR2X1
XAND2X2_11 vdd gnd sum_comp_2[3] sum_comp_1[3] g3 AND2X2
XNOR2X1_19 vdd sum_comp_1[3] gnd _18_ sum_comp_2[3] NOR2X1
XINVX1_8 _18_ gen3.p vdd gnd INVX1
XNOR2X1_20 vdd g3 gnd S3.h _18_ NOR2X1
XAND2X2_12 vdd gnd sum_comp_2[4] sum_comp_1[4] g4 AND2X2
XNOR2X1_21 vdd sum_comp_1[4] gnd _19_ sum_comp_2[4] NOR2X1
XINVX1_9 _19_ gen4.p vdd gnd INVX1
XNOR2X1_22 vdd g4 gnd S4.h _19_ NOR2X1
XAND2X2_13 vdd gnd sum_comp_2[5] sum_comp_1[5] g5 AND2X2
XNOR2X1_23 vdd sum_comp_1[5] gnd _20_ sum_comp_2[5] NOR2X1
XINVX1_10 _20_ gen5.p vdd gnd INVX1
XNOR2X1_24 vdd g5 gnd S5.h _20_ NOR2X1
XINVX1_11 g1 _21_ vdd gnd INVX1
XNAND2X1_9 vdd _22_ gnd Carry_in.g0_new gen1.p NAND2X1
XNAND2X1_10 vdd S2.c gnd _21_ _22_ NAND2X1
XINVX1_12 g2 _23_ vdd gnd INVX1
XNAND2X1_11 vdd _24_ gnd S2.c gen2.p NAND2X1
XNAND2X1_12 vdd S3.c gnd _23_ _24_ NAND2X1
XINVX1_13 g_3_2 _25_ vdd gnd INVX1
XNAND2X1_13 vdd _26_ gnd S2.c mod_3_0.p1 NAND2X1
XNAND2X1_14 vdd S4.c gnd _25_ _26_ NAND2X1
XINVX1_14 g3 _27_ vdd gnd INVX1
XNAND2X1_15 vdd _28_ gnd g2 gen3.p NAND2X1
XNAND2X1_16 vdd g_3_2 gnd _27_ _28_ NAND2X1
XAND2X2_14 vdd gnd gen3.p gen2.p mod_3_0.p1 AND2X2
XFILL_0_0_0 vdd gnd FILL
XFILL_0_0_1 vdd gnd FILL
XFILL_0_0_2 vdd gnd FILL
XFILL_0_1_0 vdd gnd FILL
XFILL_0_1_1 vdd gnd FILL
XFILL_0_1_2 vdd gnd FILL
XFILL_1_0_0 vdd gnd FILL
XFILL_1_0_1 vdd gnd FILL
XFILL_1_0_2 vdd gnd FILL
XFILL_1_1_0 vdd gnd FILL
XFILL_1_1_1 vdd gnd FILL
XFILL_1_1_2 vdd gnd FILL
XFILL_2_1 vdd gnd FILL
XFILL_2_0_0 vdd gnd FILL
XFILL_2_0_1 vdd gnd FILL
XFILL_2_0_2 vdd gnd FILL
XFILL_2_1_0 vdd gnd FILL
XFILL_2_1_1 vdd gnd FILL
XFILL_2_1_2 vdd gnd FILL
XFILL_3_0_0 vdd gnd FILL
XFILL_3_0_1 vdd gnd FILL
XFILL_3_0_2 vdd gnd FILL
XFILL_3_1_0 vdd gnd FILL
XFILL_3_1_1 vdd gnd FILL
XFILL_3_1_2 vdd gnd FILL
XFILL_4_1 vdd gnd FILL
XFILL_4_2 vdd gnd FILL
.ends PPA_adder
 
