module indicate_carry(c0, p0, g0, g0_new);
	input c0, p0, g0;
        output g0_new;

	wire gate_and;
	and carry_and (gate_and, c0, p0);
	or carry_or (g0_new, gate_and, g0);
endmodule

module t_generator(x, y, g, p, h);
	input x, y;
        output g, p, h;

	and gate_and (g, x, y);
	or gate_or (p, x, y);
	xor gate_xor (h, x, y);
endmodule

module GP_module(g1, p1, g2, p2, g_prim, p_prim);
	input g1, p1, g2, p2;
        output g_prim, p_prim;

	wire gate_and;
	and gp_and1 (gate_and, p1, g2);
	or gp_or (g_prim, g1, gate_and);
	and gp_and2 (p_prim, p1, p2);
endmodule

module add_pos(h, c, s);
	input h, c;
	output s;

	xor xor_bit_output (s, h, c);
endmodule

module PPA_adder(sum_comp_1, sum_comp_2, c_in, result, c_out);
	input [5:0] sum_comp_1;
    input [5:0] sum_comp_2;
    input c_in;
    output [5:0] result;
    output c_out;

	wire g0, p0, h0;
	wire g1, p1, h1;
	wire g2, p2, h2;
	wire g3, p3, h3;
	wire g4, p4, h4;
	wire g5, p5, h5;

	wire g0_new;

	wire g_1_0, p_1_0;
	wire g_2_0, p_2_0;
	wire g_3_2, p_3_2;
	wire g_3_0, p_3_0;
	wire g_4_0, p_4_0;
	wire g_5_4, p_5_4;
	wire g_5_0, p_5_0;

	t_generator gen0 (sum_comp_1[0], sum_comp_2[0], g0, p0, h0);
	t_generator gen1 (sum_comp_1[1], sum_comp_2[1], g1, p1, h1);
	t_generator gen2 (sum_comp_1[2], sum_comp_2[2], g2, p2, h2);
	t_generator gen3 (sum_comp_1[3], sum_comp_2[3], g3, p3, h3);
	t_generator gen4 (sum_comp_1[4], sum_comp_2[4], g4, p4, h4);
	t_generator gen5 (sum_comp_1[5], sum_comp_2[5], g5, p5, h5);

	indicate_carry Carry_in (c_in, p0, g0, g0_new);

	GP_module mod_1_0 (g1, p1, g0_new, p0, g_1_0, p_1_0);
	GP_module mod_2_0 (g2, p2, g_1_0, p_1_0, g_2_0, p_2_0);
	GP_module mod_3_2 (g3, p3, g2, p2, g_3_2, p_3_2);
	GP_module mod_3_0 (g_3_2, p_3_2, g_1_0, p_1_0, g_3_0, p_3_0);
	GP_module mod_4_0 (g4, p4, g_3_0, p_3_0, g_4_0, p_4_0);
	GP_module mod_5_4 (g5, p5, g4, p4, g_5_4, p_5_4);
	GP_module mod_5_0 (g_5_4, p_5_4, g_3_0, p_3_0, g_5_0, p_5_0);

	add_pos S0 (h0, c_in, result[0]);
	add_pos S1 (h1, g0_new, result[1]);
	add_pos S2 (h2, g_1_0, result[2]);
	add_pos S3 (h3, g_2_0, result[3]);
	add_pos S4 (h4, g_3_0, result[4]);
	add_pos S5 (h5, g_4_0, result[5]);
	assign c_out = g_5_0;

endmodule
