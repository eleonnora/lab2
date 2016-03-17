--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.68d
--  \   \         Application: netgen
--  /   /         Filename: top_synthesis.vhd
-- /___/   /\     Timestamp: Thu Mar 17 13:06:05 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm top -w -dir netgen/synthesis -ofmt vhdl -sim top.ngc top_synthesis.vhd 
-- Device	: xc6slx45-2-fgg676
-- Input file	: top.ngc
-- Output file	: C:\materija\ra1802013\lprs2\Vezba2\lab2\HDL\synthesis\lab2\netgen\synthesis\top_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: top
-- Xilinx	: C:\Xilinx\14.6\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity top is
  port (
    clk_i : in STD_LOGIC := 'X'; 
    reset_n_i : in STD_LOGIC := 'X'; 
    vga_hsync_o : out STD_LOGIC; 
    vga_vsync_o : out STD_LOGIC; 
    blank_o : out STD_LOGIC; 
    pix_clock_o : out STD_LOGIC; 
    psave_o : out STD_LOGIC; 
    sync_o : out STD_LOGIC; 
    red_o : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    green_o : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    blue_o : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end top;

architecture Structure of top is
  component char_rom_def
    port (
      clk : in STD_LOGIC := 'X'; 
      dout : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
      addr : in STD_LOGIC_VECTOR ( 8 downto 0 ) 
    );
  end component;
  signal reset_n_i_IBUF_1 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_horiz_sync_out_r_2 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_vert_sync_out_r_3 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_blank_r_4 : STD_LOGIC; 
  signal vga_top_i_vga_i_clk_s : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_psave_r_6 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_sync_r_7 : STD_LOGIC; 
  signal pix_clock_o_OBUF_8 : STD_LOGIC; 
  signal pix_clock_n : STD_LOGIC; 
  signal direct_mode : STD_LOGIC; 
  signal pixel_we : STD_LOGIC; 
  signal vga_top_i_vga_i_locked_del_reg_r_28 : STD_LOGIC; 
  signal vga_top_i_vga_i_rst_n_i_inv : STD_LOGIC; 
  signal vga_top_i_vga_i_locked_del_s : STD_LOGIC; 
  signal vga_top_i_vga_i_locked_s : STD_LOGIC; 
  signal vga_top_i_vga_i_res_1_dcm25_i_clkfx : STD_LOGIC; 
  signal vga_top_i_vga_i_res_1_dcm25_i_clkin1 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val2_67 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Result_9_1 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Result_8_1 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Result_7_1 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Result_6_1 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Result_5_1 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Result_4_1 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Result_3_1 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Result_2_1 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Result_1_1 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Result_0_1 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_98 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_109 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_rst_n_i_inv : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_GND_11_o_INV_11_o_111 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_GND_11_o_INV_7_o : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_enable_s_113 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_vert_sync_r_114 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_horiz_sync_r_115 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_sync_d_r_116 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_blank_d_r_117 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_vert_sync_out_d_r_118 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_horiz_sync_out_d_r_119 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_psave_d_r_120 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_8_rt_158 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_7_rt_159 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_6_rt_160 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_5_rt_161 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_4_rt_162 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_3_rt_163 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_2_rt_164 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_1_rt_165 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_8_rt_166 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_7_rt_167 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_6_rt_168 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_5_rt_169 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_4_rt_170 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_3_rt_171 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_2_rt_172 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_1_rt_173 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_9_rt_174 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_9_rt_175 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_vert_sync_r_rstpot_176 : STD_LOGIC; 
  signal vga_top_i_vga_i_vga_sync_i_sync_d_r_rstpot_177 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_CARRYOUTF_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_CARRYOUT_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_BCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCIN_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_P_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_PCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_Maddsub_n0103_M_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLK2X180_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLK2X_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLK180_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLK270_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLK0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLKFX180_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLKDV_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_PSDONE_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLK90_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_ADDRA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_ADDRB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_0_UNCONNECTED : STD_LOGIC; 
  signal vga_top_i_txt_rom_addr_c : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal vga_top_i_char_addr_s : STD_LOGIC_VECTOR ( 5 downto 4 ); 
  signal vga_top_i_vga_i_vga_sync_i_h_count_r : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_top_i_vga_i_vga_sync_i_v_count_r : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_top_i_text_mem_i_index : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal vga_top_i_vga_i_vga_sync_i_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => direct_mode
    );
  XST_GND : GND
    port map (
      G => pixel_we
    );
  vga_top_i_vga_i_locked_del_reg_r : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_locked_del_s,
      R => vga_top_i_vga_i_rst_n_i_inv,
      Q => vga_top_i_vga_i_locked_del_reg_r_28
    );
  vga_top_i_Maddsub_n0103 : DSP48A1
    generic map(
      A0REG => 0,
      A1REG => 0,
      B0REG => 0,
      B1REG => 0,
      DREG => 0,
      MREG => 0,
      PREG => 0,
      CREG => 1,
      OPMODEREG => 0,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      CARRYINSEL => "OPMODE5",
      RSTTYPE => "SYNC"
    )
    port map (
      CECARRYIN => pixel_we,
      RSTC => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_98,
      RSTCARRYIN => pixel_we,
      CED => pixel_we,
      RSTD => pixel_we,
      CEOPMODE => pixel_we,
      CEC => direct_mode,
      CARRYOUTF => NLW_vga_top_i_Maddsub_n0103_CARRYOUTF_UNCONNECTED,
      RSTOPMODE => pixel_we,
      RSTM => pixel_we,
      CLK => vga_top_i_vga_i_clk_s,
      RSTB => pixel_we,
      CEM => pixel_we,
      CEB => pixel_we,
      CARRYIN => pixel_we,
      CEP => pixel_we,
      CEA => pixel_we,
      CARRYOUT => NLW_vga_top_i_Maddsub_n0103_CARRYOUT_UNCONNECTED,
      RSTA => pixel_we,
      RSTP => pixel_we,
      B(17) => pixel_we,
      B(16) => pixel_we,
      B(15) => pixel_we,
      B(14) => pixel_we,
      B(13) => pixel_we,
      B(12) => pixel_we,
      B(11) => pixel_we,
      B(10) => pixel_we,
      B(9) => pixel_we,
      B(8) => pixel_we,
      B(7) => pixel_we,
      B(6) => pixel_we,
      B(5) => vga_top_i_vga_i_vga_sync_i_v_count_r(9),
      B(4) => vga_top_i_vga_i_vga_sync_i_v_count_r(8),
      B(3) => vga_top_i_vga_i_vga_sync_i_v_count_r(7),
      B(2) => vga_top_i_vga_i_vga_sync_i_v_count_r(6),
      B(1) => vga_top_i_vga_i_vga_sync_i_v_count_r(5),
      B(0) => vga_top_i_vga_i_vga_sync_i_v_count_r(4),
      BCOUT(17) => NLW_vga_top_i_Maddsub_n0103_BCOUT_17_UNCONNECTED,
      BCOUT(16) => NLW_vga_top_i_Maddsub_n0103_BCOUT_16_UNCONNECTED,
      BCOUT(15) => NLW_vga_top_i_Maddsub_n0103_BCOUT_15_UNCONNECTED,
      BCOUT(14) => NLW_vga_top_i_Maddsub_n0103_BCOUT_14_UNCONNECTED,
      BCOUT(13) => NLW_vga_top_i_Maddsub_n0103_BCOUT_13_UNCONNECTED,
      BCOUT(12) => NLW_vga_top_i_Maddsub_n0103_BCOUT_12_UNCONNECTED,
      BCOUT(11) => NLW_vga_top_i_Maddsub_n0103_BCOUT_11_UNCONNECTED,
      BCOUT(10) => NLW_vga_top_i_Maddsub_n0103_BCOUT_10_UNCONNECTED,
      BCOUT(9) => NLW_vga_top_i_Maddsub_n0103_BCOUT_9_UNCONNECTED,
      BCOUT(8) => NLW_vga_top_i_Maddsub_n0103_BCOUT_8_UNCONNECTED,
      BCOUT(7) => NLW_vga_top_i_Maddsub_n0103_BCOUT_7_UNCONNECTED,
      BCOUT(6) => NLW_vga_top_i_Maddsub_n0103_BCOUT_6_UNCONNECTED,
      BCOUT(5) => NLW_vga_top_i_Maddsub_n0103_BCOUT_5_UNCONNECTED,
      BCOUT(4) => NLW_vga_top_i_Maddsub_n0103_BCOUT_4_UNCONNECTED,
      BCOUT(3) => NLW_vga_top_i_Maddsub_n0103_BCOUT_3_UNCONNECTED,
      BCOUT(2) => NLW_vga_top_i_Maddsub_n0103_BCOUT_2_UNCONNECTED,
      BCOUT(1) => NLW_vga_top_i_Maddsub_n0103_BCOUT_1_UNCONNECTED,
      BCOUT(0) => NLW_vga_top_i_Maddsub_n0103_BCOUT_0_UNCONNECTED,
      PCIN(47) => NLW_vga_top_i_Maddsub_n0103_PCIN_47_UNCONNECTED,
      PCIN(46) => NLW_vga_top_i_Maddsub_n0103_PCIN_46_UNCONNECTED,
      PCIN(45) => NLW_vga_top_i_Maddsub_n0103_PCIN_45_UNCONNECTED,
      PCIN(44) => NLW_vga_top_i_Maddsub_n0103_PCIN_44_UNCONNECTED,
      PCIN(43) => NLW_vga_top_i_Maddsub_n0103_PCIN_43_UNCONNECTED,
      PCIN(42) => NLW_vga_top_i_Maddsub_n0103_PCIN_42_UNCONNECTED,
      PCIN(41) => NLW_vga_top_i_Maddsub_n0103_PCIN_41_UNCONNECTED,
      PCIN(40) => NLW_vga_top_i_Maddsub_n0103_PCIN_40_UNCONNECTED,
      PCIN(39) => NLW_vga_top_i_Maddsub_n0103_PCIN_39_UNCONNECTED,
      PCIN(38) => NLW_vga_top_i_Maddsub_n0103_PCIN_38_UNCONNECTED,
      PCIN(37) => NLW_vga_top_i_Maddsub_n0103_PCIN_37_UNCONNECTED,
      PCIN(36) => NLW_vga_top_i_Maddsub_n0103_PCIN_36_UNCONNECTED,
      PCIN(35) => NLW_vga_top_i_Maddsub_n0103_PCIN_35_UNCONNECTED,
      PCIN(34) => NLW_vga_top_i_Maddsub_n0103_PCIN_34_UNCONNECTED,
      PCIN(33) => NLW_vga_top_i_Maddsub_n0103_PCIN_33_UNCONNECTED,
      PCIN(32) => NLW_vga_top_i_Maddsub_n0103_PCIN_32_UNCONNECTED,
      PCIN(31) => NLW_vga_top_i_Maddsub_n0103_PCIN_31_UNCONNECTED,
      PCIN(30) => NLW_vga_top_i_Maddsub_n0103_PCIN_30_UNCONNECTED,
      PCIN(29) => NLW_vga_top_i_Maddsub_n0103_PCIN_29_UNCONNECTED,
      PCIN(28) => NLW_vga_top_i_Maddsub_n0103_PCIN_28_UNCONNECTED,
      PCIN(27) => NLW_vga_top_i_Maddsub_n0103_PCIN_27_UNCONNECTED,
      PCIN(26) => NLW_vga_top_i_Maddsub_n0103_PCIN_26_UNCONNECTED,
      PCIN(25) => NLW_vga_top_i_Maddsub_n0103_PCIN_25_UNCONNECTED,
      PCIN(24) => NLW_vga_top_i_Maddsub_n0103_PCIN_24_UNCONNECTED,
      PCIN(23) => NLW_vga_top_i_Maddsub_n0103_PCIN_23_UNCONNECTED,
      PCIN(22) => NLW_vga_top_i_Maddsub_n0103_PCIN_22_UNCONNECTED,
      PCIN(21) => NLW_vga_top_i_Maddsub_n0103_PCIN_21_UNCONNECTED,
      PCIN(20) => NLW_vga_top_i_Maddsub_n0103_PCIN_20_UNCONNECTED,
      PCIN(19) => NLW_vga_top_i_Maddsub_n0103_PCIN_19_UNCONNECTED,
      PCIN(18) => NLW_vga_top_i_Maddsub_n0103_PCIN_18_UNCONNECTED,
      PCIN(17) => NLW_vga_top_i_Maddsub_n0103_PCIN_17_UNCONNECTED,
      PCIN(16) => NLW_vga_top_i_Maddsub_n0103_PCIN_16_UNCONNECTED,
      PCIN(15) => NLW_vga_top_i_Maddsub_n0103_PCIN_15_UNCONNECTED,
      PCIN(14) => NLW_vga_top_i_Maddsub_n0103_PCIN_14_UNCONNECTED,
      PCIN(13) => NLW_vga_top_i_Maddsub_n0103_PCIN_13_UNCONNECTED,
      PCIN(12) => NLW_vga_top_i_Maddsub_n0103_PCIN_12_UNCONNECTED,
      PCIN(11) => NLW_vga_top_i_Maddsub_n0103_PCIN_11_UNCONNECTED,
      PCIN(10) => NLW_vga_top_i_Maddsub_n0103_PCIN_10_UNCONNECTED,
      PCIN(9) => NLW_vga_top_i_Maddsub_n0103_PCIN_9_UNCONNECTED,
      PCIN(8) => NLW_vga_top_i_Maddsub_n0103_PCIN_8_UNCONNECTED,
      PCIN(7) => NLW_vga_top_i_Maddsub_n0103_PCIN_7_UNCONNECTED,
      PCIN(6) => NLW_vga_top_i_Maddsub_n0103_PCIN_6_UNCONNECTED,
      PCIN(5) => NLW_vga_top_i_Maddsub_n0103_PCIN_5_UNCONNECTED,
      PCIN(4) => NLW_vga_top_i_Maddsub_n0103_PCIN_4_UNCONNECTED,
      PCIN(3) => NLW_vga_top_i_Maddsub_n0103_PCIN_3_UNCONNECTED,
      PCIN(2) => NLW_vga_top_i_Maddsub_n0103_PCIN_2_UNCONNECTED,
      PCIN(1) => NLW_vga_top_i_Maddsub_n0103_PCIN_1_UNCONNECTED,
      PCIN(0) => NLW_vga_top_i_Maddsub_n0103_PCIN_0_UNCONNECTED,
      C(47) => pixel_we,
      C(46) => pixel_we,
      C(45) => pixel_we,
      C(44) => pixel_we,
      C(43) => pixel_we,
      C(42) => pixel_we,
      C(41) => pixel_we,
      C(40) => pixel_we,
      C(39) => pixel_we,
      C(38) => pixel_we,
      C(37) => pixel_we,
      C(36) => pixel_we,
      C(35) => pixel_we,
      C(34) => pixel_we,
      C(33) => pixel_we,
      C(32) => pixel_we,
      C(31) => pixel_we,
      C(30) => pixel_we,
      C(29) => pixel_we,
      C(28) => pixel_we,
      C(27) => pixel_we,
      C(26) => pixel_we,
      C(25) => pixel_we,
      C(24) => pixel_we,
      C(23) => pixel_we,
      C(22) => pixel_we,
      C(21) => pixel_we,
      C(20) => pixel_we,
      C(19) => pixel_we,
      C(18) => pixel_we,
      C(17) => pixel_we,
      C(16) => pixel_we,
      C(15) => pixel_we,
      C(14) => pixel_we,
      C(13) => pixel_we,
      C(12) => pixel_we,
      C(11) => pixel_we,
      C(10) => pixel_we,
      C(9) => pixel_we,
      C(8) => pixel_we,
      C(7) => pixel_we,
      C(6) => pixel_we,
      C(5) => vga_top_i_vga_i_vga_sync_i_Result_9_1,
      C(4) => vga_top_i_vga_i_vga_sync_i_Result_8_1,
      C(3) => vga_top_i_vga_i_vga_sync_i_Result_7_1,
      C(2) => vga_top_i_vga_i_vga_sync_i_Result_6_1,
      C(1) => vga_top_i_vga_i_vga_sync_i_Result_5_1,
      C(0) => vga_top_i_vga_i_vga_sync_i_Result_4_1,
      P(47) => NLW_vga_top_i_Maddsub_n0103_P_47_UNCONNECTED,
      P(46) => NLW_vga_top_i_Maddsub_n0103_P_46_UNCONNECTED,
      P(45) => NLW_vga_top_i_Maddsub_n0103_P_45_UNCONNECTED,
      P(44) => NLW_vga_top_i_Maddsub_n0103_P_44_UNCONNECTED,
      P(43) => NLW_vga_top_i_Maddsub_n0103_P_43_UNCONNECTED,
      P(42) => NLW_vga_top_i_Maddsub_n0103_P_42_UNCONNECTED,
      P(41) => NLW_vga_top_i_Maddsub_n0103_P_41_UNCONNECTED,
      P(40) => NLW_vga_top_i_Maddsub_n0103_P_40_UNCONNECTED,
      P(39) => NLW_vga_top_i_Maddsub_n0103_P_39_UNCONNECTED,
      P(38) => NLW_vga_top_i_Maddsub_n0103_P_38_UNCONNECTED,
      P(37) => NLW_vga_top_i_Maddsub_n0103_P_37_UNCONNECTED,
      P(36) => NLW_vga_top_i_Maddsub_n0103_P_36_UNCONNECTED,
      P(35) => NLW_vga_top_i_Maddsub_n0103_P_35_UNCONNECTED,
      P(34) => NLW_vga_top_i_Maddsub_n0103_P_34_UNCONNECTED,
      P(33) => NLW_vga_top_i_Maddsub_n0103_P_33_UNCONNECTED,
      P(32) => NLW_vga_top_i_Maddsub_n0103_P_32_UNCONNECTED,
      P(31) => NLW_vga_top_i_Maddsub_n0103_P_31_UNCONNECTED,
      P(30) => NLW_vga_top_i_Maddsub_n0103_P_30_UNCONNECTED,
      P(29) => NLW_vga_top_i_Maddsub_n0103_P_29_UNCONNECTED,
      P(28) => NLW_vga_top_i_Maddsub_n0103_P_28_UNCONNECTED,
      P(27) => NLW_vga_top_i_Maddsub_n0103_P_27_UNCONNECTED,
      P(26) => NLW_vga_top_i_Maddsub_n0103_P_26_UNCONNECTED,
      P(25) => NLW_vga_top_i_Maddsub_n0103_P_25_UNCONNECTED,
      P(24) => NLW_vga_top_i_Maddsub_n0103_P_24_UNCONNECTED,
      P(23) => NLW_vga_top_i_Maddsub_n0103_P_23_UNCONNECTED,
      P(22) => NLW_vga_top_i_Maddsub_n0103_P_22_UNCONNECTED,
      P(21) => NLW_vga_top_i_Maddsub_n0103_P_21_UNCONNECTED,
      P(20) => NLW_vga_top_i_Maddsub_n0103_P_20_UNCONNECTED,
      P(19) => NLW_vga_top_i_Maddsub_n0103_P_19_UNCONNECTED,
      P(18) => NLW_vga_top_i_Maddsub_n0103_P_18_UNCONNECTED,
      P(17) => NLW_vga_top_i_Maddsub_n0103_P_17_UNCONNECTED,
      P(16) => NLW_vga_top_i_Maddsub_n0103_P_16_UNCONNECTED,
      P(15) => NLW_vga_top_i_Maddsub_n0103_P_15_UNCONNECTED,
      P(14) => NLW_vga_top_i_Maddsub_n0103_P_14_UNCONNECTED,
      P(13) => vga_top_i_txt_rom_addr_c(13),
      P(12) => vga_top_i_txt_rom_addr_c(12),
      P(11) => vga_top_i_txt_rom_addr_c(11),
      P(10) => vga_top_i_txt_rom_addr_c(10),
      P(9) => vga_top_i_txt_rom_addr_c(9),
      P(8) => vga_top_i_txt_rom_addr_c(8),
      P(7) => vga_top_i_txt_rom_addr_c(7),
      P(6) => vga_top_i_txt_rom_addr_c(6),
      P(5) => vga_top_i_txt_rom_addr_c(5),
      P(4) => vga_top_i_txt_rom_addr_c(4),
      P(3) => vga_top_i_txt_rom_addr_c(3),
      P(2) => vga_top_i_txt_rom_addr_c(2),
      P(1) => vga_top_i_txt_rom_addr_c(1),
      P(0) => vga_top_i_txt_rom_addr_c(0),
      OPMODE(7) => pixel_we,
      OPMODE(6) => pixel_we,
      OPMODE(5) => pixel_we,
      OPMODE(4) => pixel_we,
      OPMODE(3) => direct_mode,
      OPMODE(2) => direct_mode,
      OPMODE(1) => pixel_we,
      OPMODE(0) => direct_mode,
      D(17) => pixel_we,
      D(16) => pixel_we,
      D(15) => pixel_we,
      D(14) => pixel_we,
      D(13) => pixel_we,
      D(12) => pixel_we,
      D(11) => pixel_we,
      D(10) => pixel_we,
      D(9) => pixel_we,
      D(8) => pixel_we,
      D(7) => pixel_we,
      D(6) => pixel_we,
      D(5) => pixel_we,
      D(4) => pixel_we,
      D(3) => pixel_we,
      D(2) => pixel_we,
      D(1) => pixel_we,
      D(0) => pixel_we,
      PCOUT(47) => NLW_vga_top_i_Maddsub_n0103_PCOUT_47_UNCONNECTED,
      PCOUT(46) => NLW_vga_top_i_Maddsub_n0103_PCOUT_46_UNCONNECTED,
      PCOUT(45) => NLW_vga_top_i_Maddsub_n0103_PCOUT_45_UNCONNECTED,
      PCOUT(44) => NLW_vga_top_i_Maddsub_n0103_PCOUT_44_UNCONNECTED,
      PCOUT(43) => NLW_vga_top_i_Maddsub_n0103_PCOUT_43_UNCONNECTED,
      PCOUT(42) => NLW_vga_top_i_Maddsub_n0103_PCOUT_42_UNCONNECTED,
      PCOUT(41) => NLW_vga_top_i_Maddsub_n0103_PCOUT_41_UNCONNECTED,
      PCOUT(40) => NLW_vga_top_i_Maddsub_n0103_PCOUT_40_UNCONNECTED,
      PCOUT(39) => NLW_vga_top_i_Maddsub_n0103_PCOUT_39_UNCONNECTED,
      PCOUT(38) => NLW_vga_top_i_Maddsub_n0103_PCOUT_38_UNCONNECTED,
      PCOUT(37) => NLW_vga_top_i_Maddsub_n0103_PCOUT_37_UNCONNECTED,
      PCOUT(36) => NLW_vga_top_i_Maddsub_n0103_PCOUT_36_UNCONNECTED,
      PCOUT(35) => NLW_vga_top_i_Maddsub_n0103_PCOUT_35_UNCONNECTED,
      PCOUT(34) => NLW_vga_top_i_Maddsub_n0103_PCOUT_34_UNCONNECTED,
      PCOUT(33) => NLW_vga_top_i_Maddsub_n0103_PCOUT_33_UNCONNECTED,
      PCOUT(32) => NLW_vga_top_i_Maddsub_n0103_PCOUT_32_UNCONNECTED,
      PCOUT(31) => NLW_vga_top_i_Maddsub_n0103_PCOUT_31_UNCONNECTED,
      PCOUT(30) => NLW_vga_top_i_Maddsub_n0103_PCOUT_30_UNCONNECTED,
      PCOUT(29) => NLW_vga_top_i_Maddsub_n0103_PCOUT_29_UNCONNECTED,
      PCOUT(28) => NLW_vga_top_i_Maddsub_n0103_PCOUT_28_UNCONNECTED,
      PCOUT(27) => NLW_vga_top_i_Maddsub_n0103_PCOUT_27_UNCONNECTED,
      PCOUT(26) => NLW_vga_top_i_Maddsub_n0103_PCOUT_26_UNCONNECTED,
      PCOUT(25) => NLW_vga_top_i_Maddsub_n0103_PCOUT_25_UNCONNECTED,
      PCOUT(24) => NLW_vga_top_i_Maddsub_n0103_PCOUT_24_UNCONNECTED,
      PCOUT(23) => NLW_vga_top_i_Maddsub_n0103_PCOUT_23_UNCONNECTED,
      PCOUT(22) => NLW_vga_top_i_Maddsub_n0103_PCOUT_22_UNCONNECTED,
      PCOUT(21) => NLW_vga_top_i_Maddsub_n0103_PCOUT_21_UNCONNECTED,
      PCOUT(20) => NLW_vga_top_i_Maddsub_n0103_PCOUT_20_UNCONNECTED,
      PCOUT(19) => NLW_vga_top_i_Maddsub_n0103_PCOUT_19_UNCONNECTED,
      PCOUT(18) => NLW_vga_top_i_Maddsub_n0103_PCOUT_18_UNCONNECTED,
      PCOUT(17) => NLW_vga_top_i_Maddsub_n0103_PCOUT_17_UNCONNECTED,
      PCOUT(16) => NLW_vga_top_i_Maddsub_n0103_PCOUT_16_UNCONNECTED,
      PCOUT(15) => NLW_vga_top_i_Maddsub_n0103_PCOUT_15_UNCONNECTED,
      PCOUT(14) => NLW_vga_top_i_Maddsub_n0103_PCOUT_14_UNCONNECTED,
      PCOUT(13) => NLW_vga_top_i_Maddsub_n0103_PCOUT_13_UNCONNECTED,
      PCOUT(12) => NLW_vga_top_i_Maddsub_n0103_PCOUT_12_UNCONNECTED,
      PCOUT(11) => NLW_vga_top_i_Maddsub_n0103_PCOUT_11_UNCONNECTED,
      PCOUT(10) => NLW_vga_top_i_Maddsub_n0103_PCOUT_10_UNCONNECTED,
      PCOUT(9) => NLW_vga_top_i_Maddsub_n0103_PCOUT_9_UNCONNECTED,
      PCOUT(8) => NLW_vga_top_i_Maddsub_n0103_PCOUT_8_UNCONNECTED,
      PCOUT(7) => NLW_vga_top_i_Maddsub_n0103_PCOUT_7_UNCONNECTED,
      PCOUT(6) => NLW_vga_top_i_Maddsub_n0103_PCOUT_6_UNCONNECTED,
      PCOUT(5) => NLW_vga_top_i_Maddsub_n0103_PCOUT_5_UNCONNECTED,
      PCOUT(4) => NLW_vga_top_i_Maddsub_n0103_PCOUT_4_UNCONNECTED,
      PCOUT(3) => NLW_vga_top_i_Maddsub_n0103_PCOUT_3_UNCONNECTED,
      PCOUT(2) => NLW_vga_top_i_Maddsub_n0103_PCOUT_2_UNCONNECTED,
      PCOUT(1) => NLW_vga_top_i_Maddsub_n0103_PCOUT_1_UNCONNECTED,
      PCOUT(0) => NLW_vga_top_i_Maddsub_n0103_PCOUT_0_UNCONNECTED,
      A(17) => pixel_we,
      A(16) => pixel_we,
      A(15) => pixel_we,
      A(14) => pixel_we,
      A(13) => pixel_we,
      A(12) => pixel_we,
      A(11) => pixel_we,
      A(10) => pixel_we,
      A(9) => pixel_we,
      A(8) => pixel_we,
      A(7) => pixel_we,
      A(6) => pixel_we,
      A(5) => direct_mode,
      A(4) => pixel_we,
      A(3) => direct_mode,
      A(2) => pixel_we,
      A(1) => pixel_we,
      A(0) => pixel_we,
      M(35) => NLW_vga_top_i_Maddsub_n0103_M_35_UNCONNECTED,
      M(34) => NLW_vga_top_i_Maddsub_n0103_M_34_UNCONNECTED,
      M(33) => NLW_vga_top_i_Maddsub_n0103_M_33_UNCONNECTED,
      M(32) => NLW_vga_top_i_Maddsub_n0103_M_32_UNCONNECTED,
      M(31) => NLW_vga_top_i_Maddsub_n0103_M_31_UNCONNECTED,
      M(30) => NLW_vga_top_i_Maddsub_n0103_M_30_UNCONNECTED,
      M(29) => NLW_vga_top_i_Maddsub_n0103_M_29_UNCONNECTED,
      M(28) => NLW_vga_top_i_Maddsub_n0103_M_28_UNCONNECTED,
      M(27) => NLW_vga_top_i_Maddsub_n0103_M_27_UNCONNECTED,
      M(26) => NLW_vga_top_i_Maddsub_n0103_M_26_UNCONNECTED,
      M(25) => NLW_vga_top_i_Maddsub_n0103_M_25_UNCONNECTED,
      M(24) => NLW_vga_top_i_Maddsub_n0103_M_24_UNCONNECTED,
      M(23) => NLW_vga_top_i_Maddsub_n0103_M_23_UNCONNECTED,
      M(22) => NLW_vga_top_i_Maddsub_n0103_M_22_UNCONNECTED,
      M(21) => NLW_vga_top_i_Maddsub_n0103_M_21_UNCONNECTED,
      M(20) => NLW_vga_top_i_Maddsub_n0103_M_20_UNCONNECTED,
      M(19) => NLW_vga_top_i_Maddsub_n0103_M_19_UNCONNECTED,
      M(18) => NLW_vga_top_i_Maddsub_n0103_M_18_UNCONNECTED,
      M(17) => NLW_vga_top_i_Maddsub_n0103_M_17_UNCONNECTED,
      M(16) => NLW_vga_top_i_Maddsub_n0103_M_16_UNCONNECTED,
      M(15) => NLW_vga_top_i_Maddsub_n0103_M_15_UNCONNECTED,
      M(14) => NLW_vga_top_i_Maddsub_n0103_M_14_UNCONNECTED,
      M(13) => NLW_vga_top_i_Maddsub_n0103_M_13_UNCONNECTED,
      M(12) => NLW_vga_top_i_Maddsub_n0103_M_12_UNCONNECTED,
      M(11) => NLW_vga_top_i_Maddsub_n0103_M_11_UNCONNECTED,
      M(10) => NLW_vga_top_i_Maddsub_n0103_M_10_UNCONNECTED,
      M(9) => NLW_vga_top_i_Maddsub_n0103_M_9_UNCONNECTED,
      M(8) => NLW_vga_top_i_Maddsub_n0103_M_8_UNCONNECTED,
      M(7) => NLW_vga_top_i_Maddsub_n0103_M_7_UNCONNECTED,
      M(6) => NLW_vga_top_i_Maddsub_n0103_M_6_UNCONNECTED,
      M(5) => NLW_vga_top_i_Maddsub_n0103_M_5_UNCONNECTED,
      M(4) => NLW_vga_top_i_Maddsub_n0103_M_4_UNCONNECTED,
      M(3) => NLW_vga_top_i_Maddsub_n0103_M_3_UNCONNECTED,
      M(2) => NLW_vga_top_i_Maddsub_n0103_M_2_UNCONNECTED,
      M(1) => NLW_vga_top_i_Maddsub_n0103_M_1_UNCONNECTED,
      M(0) => NLW_vga_top_i_Maddsub_n0103_M_0_UNCONNECTED
    );
  clk5m_inst : ODDR2
    generic map(
      DDR_ALIGNMENT => "NONE",
      SRTYPE => "SYNC",
      INIT => '0'
    )
    port map (
      D0 => direct_mode,
      D1 => pixel_we,
      C0 => vga_top_i_vga_i_clk_s,
      C1 => pix_clock_n,
      CE => direct_mode,
      R => pixel_we,
      S => pixel_we,
      Q => pix_clock_o_OBUF_8
    );
  vga_top_i_vga_i_SRL16_inst : SRL16
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => direct_mode,
      A1 => direct_mode,
      A2 => direct_mode,
      A3 => direct_mode,
      CLK => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_locked_s,
      Q => vga_top_i_vga_i_locked_del_s
    );
  vga_top_i_vga_i_res_1_dcm25_i_clkout1_buf : BUFG
    port map (
      O => vga_top_i_vga_i_clk_s,
      I => vga_top_i_vga_i_res_1_dcm25_i_clkfx
    );
  vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst : DCM_SP
    generic map(
      CLKDV_DIVIDE => 2.000000,
      CLKFX_DIVIDE => 27,
      CLKFX_MULTIPLY => 25,
      CLKIN_DIVIDE_BY_2 => FALSE,
      CLKIN_PERIOD => 37.037000,
      CLKOUT_PHASE_SHIFT => "NONE",
      CLK_FEEDBACK => "NONE",
      DESKEW_ADJUST => "SYSTEM_SYNCHRONOUS",
      DFS_FREQUENCY_MODE => "LOW",
      DLL_FREQUENCY_MODE => "LOW",
      DSS_MODE => "NONE",
      DUTY_CYCLE_CORRECTION => TRUE,
      FACTORY_JF => X"0000",
      PHASE_SHIFT => 0,
      STARTUP_WAIT => FALSE
    )
    port map (
      CLK2X180 => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLK2X180_UNCONNECTED,
      PSCLK => pixel_we,
      CLK2X => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLK2X_UNCONNECTED,
      CLKFX => vga_top_i_vga_i_res_1_dcm25_i_clkfx,
      CLK180 => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLK180_UNCONNECTED,
      CLK270 => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLK270_UNCONNECTED,
      RST => vga_top_i_vga_i_rst_n_i_inv,
      PSINCDEC => pixel_we,
      CLKIN => vga_top_i_vga_i_res_1_dcm25_i_clkin1,
      CLKFB => pixel_we,
      PSEN => pixel_we,
      CLK0 => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLK0_UNCONNECTED,
      CLKFX180 => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLKFX180_UNCONNECTED,
      CLKDV => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLKDV_UNCONNECTED,
      PSDONE => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_PSDONE_UNCONNECTED,
      CLK90 => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_CLK90_UNCONNECTED,
      LOCKED => vga_top_i_vga_i_locked_s,
      DSSEN => pixel_we,
      STATUS(7) => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_7_UNCONNECTED,
      STATUS(6) => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_6_UNCONNECTED,
      STATUS(5) => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_5_UNCONNECTED,
      STATUS(4) => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_4_UNCONNECTED,
      STATUS(3) => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_3_UNCONNECTED,
      STATUS(2) => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_2_UNCONNECTED,
      STATUS(1) => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_1_UNCONNECTED,
      STATUS(0) => NLW_vga_top_i_vga_i_res_1_dcm25_i_dcm_sp_inst_STATUS_0_UNCONNECTED
    );
  vga_top_i_vga_i_res_1_dcm25_i_clkin1_buf : IBUFG
    generic map(
      CAPACITANCE => "DONT_CARE",
      IBUF_DELAY_VALUE => "0",
      IBUF_LOW_PWR => TRUE,
      IOSTANDARD => "DEFAULT"
    )
    port map (
      I => clk_i,
      O => vga_top_i_vga_i_res_1_dcm25_i_clkin1
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_9_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(8),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_9_rt_174,
      O => vga_top_i_vga_i_vga_sync_i_Result_9_1
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_8_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(7),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_8_rt_158,
      O => vga_top_i_vga_i_vga_sync_i_Result_8_1
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_8_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(7),
      DI => pixel_we,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_8_rt_158,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(8)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_7_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(6),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_7_rt_159,
      O => vga_top_i_vga_i_vga_sync_i_Result_7_1
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_7_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(6),
      DI => pixel_we,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_7_rt_159,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(7)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_6_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(5),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_6_rt_160,
      O => vga_top_i_vga_i_vga_sync_i_Result_6_1
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_6_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(5),
      DI => pixel_we,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_6_rt_160,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(6)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_5_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(4),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_5_rt_161,
      O => vga_top_i_vga_i_vga_sync_i_Result_5_1
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_5_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(4),
      DI => pixel_we,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_5_rt_161,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(5)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_4_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(3),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_4_rt_162,
      O => vga_top_i_vga_i_vga_sync_i_Result_4_1
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_4_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(3),
      DI => pixel_we,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_4_rt_162,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(4)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_3_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(2),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_3_rt_163,
      O => vga_top_i_vga_i_vga_sync_i_Result_3_1
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_3_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(2),
      DI => pixel_we,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_3_rt_163,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(3)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_2_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(1),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_2_rt_164,
      O => vga_top_i_vga_i_vga_sync_i_Result_2_1
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_2_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(1),
      DI => pixel_we,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_2_rt_164,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(2)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_1_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(0),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_1_rt_165,
      O => vga_top_i_vga_i_vga_sync_i_Result_1_1
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_1_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(0),
      DI => pixel_we,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_1_rt_165,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(1)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_0_Q : XORCY
    port map (
      CI => pixel_we,
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_lut(0),
      O => vga_top_i_vga_i_vga_sync_i_Result_0_1
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_0_Q : MUXCY
    port map (
      CI => pixel_we,
      DI => direct_mode,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_lut(0),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy(0)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_9_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(8),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_9_rt_175,
      O => vga_top_i_vga_i_vga_sync_i_Result(9)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_8_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(7),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_8_rt_166,
      O => vga_top_i_vga_i_vga_sync_i_Result(8)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_8_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(7),
      DI => pixel_we,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_8_rt_166,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(8)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_7_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(6),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_7_rt_167,
      O => vga_top_i_vga_i_vga_sync_i_Result(7)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_7_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(6),
      DI => pixel_we,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_7_rt_167,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(7)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_6_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(5),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_6_rt_168,
      O => vga_top_i_vga_i_vga_sync_i_Result(6)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_6_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(5),
      DI => pixel_we,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_6_rt_168,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(6)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_5_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(4),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_5_rt_169,
      O => vga_top_i_vga_i_vga_sync_i_Result(5)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_5_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(4),
      DI => pixel_we,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_5_rt_169,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(5)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_4_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(3),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_4_rt_170,
      O => vga_top_i_vga_i_vga_sync_i_Result(4)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_4_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(3),
      DI => pixel_we,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_4_rt_170,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(4)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_3_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(2),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_3_rt_171,
      O => vga_top_i_vga_i_vga_sync_i_Result(3)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_3_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(2),
      DI => pixel_we,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_3_rt_171,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(3)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_2_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(1),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_2_rt_172,
      O => vga_top_i_vga_i_vga_sync_i_Result(2)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_2_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(1),
      DI => pixel_we,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_2_rt_172,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(2)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_1_Q : XORCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(0),
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_1_rt_173,
      O => vga_top_i_vga_i_vga_sync_i_Result(1)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_1_Q : MUXCY
    port map (
      CI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(0),
      DI => pixel_we,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_1_rt_173,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(1)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_0_Q : XORCY
    port map (
      CI => pixel_we,
      LI => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_lut(0),
      O => vga_top_i_vga_i_vga_sync_i_Result(0)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_0_Q : MUXCY
    port map (
      CI => pixel_we,
      DI => direct_mode,
      S => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_lut(0),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy(0)
    );
  vga_top_i_vga_i_vga_sync_i_h_count_r_0 : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_Result_0_1,
      R => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_98,
      Q => vga_top_i_vga_i_vga_sync_i_h_count_r(0)
    );
  vga_top_i_vga_i_vga_sync_i_v_count_r_0 : FDRE
    port map (
      C => vga_top_i_vga_i_clk_s,
      CE => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val2_67,
      D => vga_top_i_vga_i_vga_sync_i_Result(0),
      R => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_109,
      Q => vga_top_i_vga_i_vga_sync_i_v_count_r(0)
    );
  vga_top_i_vga_i_vga_sync_i_h_count_r_9 : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_Result_9_1,
      R => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_98,
      Q => vga_top_i_vga_i_vga_sync_i_h_count_r(9)
    );
  vga_top_i_vga_i_vga_sync_i_h_count_r_8 : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_Result_8_1,
      R => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_98,
      Q => vga_top_i_vga_i_vga_sync_i_h_count_r(8)
    );
  vga_top_i_vga_i_vga_sync_i_h_count_r_7 : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_Result_7_1,
      R => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_98,
      Q => vga_top_i_vga_i_vga_sync_i_h_count_r(7)
    );
  vga_top_i_vga_i_vga_sync_i_h_count_r_6 : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_Result_6_1,
      R => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_98,
      Q => vga_top_i_vga_i_vga_sync_i_h_count_r(6)
    );
  vga_top_i_vga_i_vga_sync_i_h_count_r_5 : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_Result_5_1,
      R => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_98,
      Q => vga_top_i_vga_i_vga_sync_i_h_count_r(5)
    );
  vga_top_i_vga_i_vga_sync_i_h_count_r_4 : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_Result_4_1,
      R => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_98,
      Q => vga_top_i_vga_i_vga_sync_i_h_count_r(4)
    );
  vga_top_i_vga_i_vga_sync_i_h_count_r_3 : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_Result_3_1,
      R => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_98,
      Q => vga_top_i_vga_i_vga_sync_i_h_count_r(3)
    );
  vga_top_i_vga_i_vga_sync_i_h_count_r_2 : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_Result_2_1,
      R => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_98,
      Q => vga_top_i_vga_i_vga_sync_i_h_count_r(2)
    );
  vga_top_i_vga_i_vga_sync_i_h_count_r_1 : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_Result_1_1,
      R => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_98,
      Q => vga_top_i_vga_i_vga_sync_i_h_count_r(1)
    );
  vga_top_i_vga_i_vga_sync_i_v_count_r_9 : FDRE
    port map (
      C => vga_top_i_vga_i_clk_s,
      CE => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val2_67,
      D => vga_top_i_vga_i_vga_sync_i_Result(9),
      R => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_109,
      Q => vga_top_i_vga_i_vga_sync_i_v_count_r(9)
    );
  vga_top_i_vga_i_vga_sync_i_v_count_r_8 : FDRE
    port map (
      C => vga_top_i_vga_i_clk_s,
      CE => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val2_67,
      D => vga_top_i_vga_i_vga_sync_i_Result(8),
      R => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_109,
      Q => vga_top_i_vga_i_vga_sync_i_v_count_r(8)
    );
  vga_top_i_vga_i_vga_sync_i_v_count_r_7 : FDRE
    port map (
      C => vga_top_i_vga_i_clk_s,
      CE => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val2_67,
      D => vga_top_i_vga_i_vga_sync_i_Result(7),
      R => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_109,
      Q => vga_top_i_vga_i_vga_sync_i_v_count_r(7)
    );
  vga_top_i_vga_i_vga_sync_i_v_count_r_6 : FDRE
    port map (
      C => vga_top_i_vga_i_clk_s,
      CE => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val2_67,
      D => vga_top_i_vga_i_vga_sync_i_Result(6),
      R => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_109,
      Q => vga_top_i_vga_i_vga_sync_i_v_count_r(6)
    );
  vga_top_i_vga_i_vga_sync_i_v_count_r_5 : FDRE
    port map (
      C => vga_top_i_vga_i_clk_s,
      CE => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val2_67,
      D => vga_top_i_vga_i_vga_sync_i_Result(5),
      R => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_109,
      Q => vga_top_i_vga_i_vga_sync_i_v_count_r(5)
    );
  vga_top_i_vga_i_vga_sync_i_v_count_r_4 : FDRE
    port map (
      C => vga_top_i_vga_i_clk_s,
      CE => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val2_67,
      D => vga_top_i_vga_i_vga_sync_i_Result(4),
      R => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_109,
      Q => vga_top_i_vga_i_vga_sync_i_v_count_r(4)
    );
  vga_top_i_vga_i_vga_sync_i_v_count_r_3 : FDRE
    port map (
      C => vga_top_i_vga_i_clk_s,
      CE => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val2_67,
      D => vga_top_i_vga_i_vga_sync_i_Result(3),
      R => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_109,
      Q => vga_top_i_vga_i_vga_sync_i_v_count_r(3)
    );
  vga_top_i_vga_i_vga_sync_i_v_count_r_2 : FDRE
    port map (
      C => vga_top_i_vga_i_clk_s,
      CE => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val2_67,
      D => vga_top_i_vga_i_vga_sync_i_Result(2),
      R => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_109,
      Q => vga_top_i_vga_i_vga_sync_i_v_count_r(2)
    );
  vga_top_i_vga_i_vga_sync_i_v_count_r_1 : FDRE
    port map (
      C => vga_top_i_vga_i_clk_s,
      CE => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val2_67,
      D => vga_top_i_vga_i_vga_sync_i_Result(1),
      R => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_109,
      Q => vga_top_i_vga_i_vga_sync_i_v_count_r(1)
    );
  vga_top_i_vga_i_vga_sync_i_vert_sync_out_r : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_vert_sync_out_d_r_118,
      R => vga_top_i_vga_i_vga_sync_i_rst_n_i_inv,
      Q => vga_top_i_vga_i_vga_sync_i_vert_sync_out_r_3
    );
  vga_top_i_vga_i_vga_sync_i_horiz_sync_out_r : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_horiz_sync_out_d_r_119,
      R => vga_top_i_vga_i_vga_sync_i_rst_n_i_inv,
      Q => vga_top_i_vga_i_vga_sync_i_horiz_sync_out_r_2
    );
  vga_top_i_vga_i_vga_sync_i_vert_sync_out_d_r : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_vert_sync_r_114,
      R => vga_top_i_vga_i_vga_sync_i_rst_n_i_inv,
      Q => vga_top_i_vga_i_vga_sync_i_vert_sync_out_d_r_118
    );
  vga_top_i_vga_i_vga_sync_i_sync_r : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_sync_d_r_116,
      R => vga_top_i_vga_i_vga_sync_i_rst_n_i_inv,
      Q => vga_top_i_vga_i_vga_sync_i_sync_r_7
    );
  vga_top_i_vga_i_vga_sync_i_blank_r : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_blank_d_r_117,
      R => vga_top_i_vga_i_vga_sync_i_rst_n_i_inv,
      Q => vga_top_i_vga_i_vga_sync_i_blank_r_4
    );
  vga_top_i_vga_i_vga_sync_i_horiz_sync_out_d_r : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_horiz_sync_r_115,
      R => vga_top_i_vga_i_vga_sync_i_rst_n_i_inv,
      Q => vga_top_i_vga_i_vga_sync_i_horiz_sync_out_d_r_119
    );
  vga_top_i_vga_i_vga_sync_i_psave_r : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_psave_d_r_120,
      R => vga_top_i_vga_i_vga_sync_i_rst_n_i_inv,
      Q => vga_top_i_vga_i_vga_sync_i_psave_r_6
    );
  vga_top_i_vga_i_vga_sync_i_horiz_sync_r : FDS
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_GND_11_o_INV_7_o,
      S => vga_top_i_vga_i_vga_sync_i_rst_n_i_inv,
      Q => vga_top_i_vga_i_vga_sync_i_horiz_sync_r_115
    );
  vga_top_i_vga_i_vga_sync_i_blank_d_r : FDR
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_enable_s_113,
      R => vga_top_i_vga_i_vga_sync_i_rst_n_i_inv,
      Q => vga_top_i_vga_i_vga_sync_i_blank_d_r_117
    );
  vga_top_i_vga_i_vga_sync_i_psave_d_r : FD
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_locked_del_reg_r_28,
      Q => vga_top_i_vga_i_vga_sync_i_psave_d_r_120
    );
  vga_top_i_vga_i_vga_sync_i_GND_11_o_INV_7_o1 : LUT6
    generic map(
      INIT => X"FFFFFFFFF777777F"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(7),
      I1 => vga_top_i_vga_i_vga_sync_i_h_count_r(9),
      I2 => vga_top_i_vga_i_vga_sync_i_h_count_r(6),
      I3 => vga_top_i_vga_i_vga_sync_i_h_count_r(5),
      I4 => vga_top_i_vga_i_vga_sync_i_h_count_r(4),
      I5 => vga_top_i_vga_i_vga_sync_i_h_count_r(8),
      O => vga_top_i_vga_i_vga_sync_i_GND_11_o_INV_7_o
    );
  vga_top_i_text_mem_i_index_t_30_GND_22_o_LessThan_5_o1_SW0 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(7),
      I1 => vga_top_i_txt_rom_addr_c(6),
      I2 => vga_top_i_txt_rom_addr_c(8),
      O => N2
    );
  vga_top_i_vga_i_vga_sync_i_GND_11_o_INV_11_o_SW0 : LUT5
    generic map(
      INIT => X"FFFFBDFF"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(2),
      I1 => vga_top_i_vga_i_vga_sync_i_v_count_r(0),
      I2 => vga_top_i_vga_i_vga_sync_i_v_count_r(1),
      I3 => vga_top_i_vga_i_vga_sync_i_v_count_r(3),
      I4 => vga_top_i_vga_i_vga_sync_i_v_count_r(4),
      O => N4
    );
  vga_top_i_vga_i_vga_sync_i_GND_11_o_INV_11_o : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(8),
      I1 => vga_top_i_vga_i_vga_sync_i_v_count_r(7),
      I2 => vga_top_i_vga_i_vga_sync_i_v_count_r(6),
      I3 => vga_top_i_vga_i_vga_sync_i_v_count_r(5),
      I4 => vga_top_i_vga_i_vga_sync_i_v_count_r(9),
      I5 => N4,
      O => vga_top_i_vga_i_vga_sync_i_GND_11_o_INV_11_o_111
    );
  vga_top_i_vga_i_vga_sync_i_enable_s_SW0 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(9),
      I1 => vga_top_i_vga_i_vga_sync_i_h_count_r(7),
      I2 => vga_top_i_vga_i_vga_sync_i_h_count_r(8),
      O => N6
    );
  vga_top_i_vga_i_vga_sync_i_enable_s : LUT6
    generic map(
      INIT => X"0111111111111111"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(9),
      I1 => N6,
      I2 => vga_top_i_vga_i_vga_sync_i_v_count_r(7),
      I3 => vga_top_i_vga_i_vga_sync_i_v_count_r(6),
      I4 => vga_top_i_vga_i_vga_sync_i_v_count_r(5),
      I5 => vga_top_i_vga_i_vga_sync_i_v_count_r(8),
      O => vga_top_i_vga_i_vga_sync_i_enable_s_113
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val2_SW0 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(3),
      I1 => vga_top_i_vga_i_vga_sync_i_h_count_r(2),
      I2 => vga_top_i_vga_i_vga_sync_i_h_count_r(1),
      I3 => vga_top_i_vga_i_vga_sync_i_h_count_r(8),
      I4 => vga_top_i_vga_i_vga_sync_i_h_count_r(0),
      O => N8
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val2 : LUT6
    generic map(
      INIT => X"0000000080000000"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(9),
      I1 => vga_top_i_vga_i_vga_sync_i_h_count_r(6),
      I2 => vga_top_i_vga_i_vga_sync_i_h_count_r(7),
      I3 => vga_top_i_vga_i_vga_sync_i_h_count_r(5),
      I4 => vga_top_i_vga_i_vga_sync_i_h_count_r(4),
      I5 => N8,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val2_67
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_SW0 : LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(4),
      I1 => vga_top_i_vga_i_vga_sync_i_v_count_r(6),
      I2 => vga_top_i_vga_i_vga_sync_i_v_count_r(3),
      I3 => vga_top_i_vga_i_vga_sync_i_v_count_r(2),
      I4 => vga_top_i_vga_i_vga_sync_i_v_count_r(5),
      O => N10
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val : LUT6
    generic map(
      INIT => X"88888880FFFFFFFF"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(9),
      I1 => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val2_67,
      I2 => N10,
      I3 => vga_top_i_vga_i_vga_sync_i_v_count_r(8),
      I4 => vga_top_i_vga_i_vga_sync_i_v_count_r(7),
      I5 => vga_top_i_vga_i_locked_del_reg_r_28,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val_109
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_SW0 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(4),
      I1 => vga_top_i_vga_i_vga_sync_i_h_count_r(3),
      I2 => vga_top_i_vga_i_vga_sync_i_h_count_r(5),
      O => N12
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val : LUT6
    generic map(
      INIT => X"88888880FFFFFFFF"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(8),
      I1 => vga_top_i_vga_i_vga_sync_i_h_count_r(9),
      I2 => N12,
      I3 => vga_top_i_vga_i_vga_sync_i_h_count_r(6),
      I4 => vga_top_i_vga_i_vga_sync_i_h_count_r(7),
      I5 => vga_top_i_vga_i_locked_del_reg_r_28,
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_val_98
    );
  reset_n_i_IBUF : IBUF
    port map (
      I => reset_n_i,
      O => reset_n_i_IBUF_1
    );
  red_o_7_OBUF : OBUF
    port map (
      I => pixel_we,
      O => red_o(7)
    );
  red_o_6_OBUF : OBUF
    port map (
      I => pixel_we,
      O => red_o(6)
    );
  red_o_5_OBUF : OBUF
    port map (
      I => pixel_we,
      O => red_o(5)
    );
  red_o_4_OBUF : OBUF
    port map (
      I => pixel_we,
      O => red_o(4)
    );
  red_o_3_OBUF : OBUF
    port map (
      I => pixel_we,
      O => red_o(3)
    );
  red_o_2_OBUF : OBUF
    port map (
      I => pixel_we,
      O => red_o(2)
    );
  red_o_1_OBUF : OBUF
    port map (
      I => pixel_we,
      O => red_o(1)
    );
  red_o_0_OBUF : OBUF
    port map (
      I => pixel_we,
      O => red_o(0)
    );
  green_o_7_OBUF : OBUF
    port map (
      I => pixel_we,
      O => green_o(7)
    );
  green_o_6_OBUF : OBUF
    port map (
      I => pixel_we,
      O => green_o(6)
    );
  green_o_5_OBUF : OBUF
    port map (
      I => pixel_we,
      O => green_o(5)
    );
  green_o_4_OBUF : OBUF
    port map (
      I => pixel_we,
      O => green_o(4)
    );
  green_o_3_OBUF : OBUF
    port map (
      I => pixel_we,
      O => green_o(3)
    );
  green_o_2_OBUF : OBUF
    port map (
      I => pixel_we,
      O => green_o(2)
    );
  green_o_1_OBUF : OBUF
    port map (
      I => pixel_we,
      O => green_o(1)
    );
  green_o_0_OBUF : OBUF
    port map (
      I => pixel_we,
      O => green_o(0)
    );
  blue_o_7_OBUF : OBUF
    port map (
      I => pixel_we,
      O => blue_o(7)
    );
  blue_o_6_OBUF : OBUF
    port map (
      I => pixel_we,
      O => blue_o(6)
    );
  blue_o_5_OBUF : OBUF
    port map (
      I => pixel_we,
      O => blue_o(5)
    );
  blue_o_4_OBUF : OBUF
    port map (
      I => pixel_we,
      O => blue_o(4)
    );
  blue_o_3_OBUF : OBUF
    port map (
      I => pixel_we,
      O => blue_o(3)
    );
  blue_o_2_OBUF : OBUF
    port map (
      I => pixel_we,
      O => blue_o(2)
    );
  blue_o_1_OBUF : OBUF
    port map (
      I => pixel_we,
      O => blue_o(1)
    );
  blue_o_0_OBUF : OBUF
    port map (
      I => pixel_we,
      O => blue_o(0)
    );
  vga_hsync_o_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_horiz_sync_out_r_2,
      O => vga_hsync_o
    );
  vga_vsync_o_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_vert_sync_out_r_3,
      O => vga_vsync_o
    );
  blank_o_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_blank_r_4,
      O => blank_o
    );
  pix_clock_o_OBUF : OBUF
    port map (
      I => pix_clock_o_OBUF_8,
      O => pix_clock_o
    );
  psave_o_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_psave_r_6,
      O => psave_o
    );
  sync_o_OBUF : OBUF
    port map (
      I => vga_top_i_vga_i_vga_sync_i_sync_r_7,
      O => sync_o
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(8),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_8_rt_158
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(7),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_7_rt_159
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(6),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_6_rt_160
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(5),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_5_rt_161
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(4),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_4_rt_162
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(3),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_3_rt_163
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(2),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_2_rt_164
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(1),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_cy_1_rt_165
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(8),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_8_rt_166
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(7),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_7_rt_167
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(6),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_6_rt_168
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(5),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_5_rt_169
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(4),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_4_rt_170
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(3),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_3_rt_171
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(2),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_2_rt_172
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(1),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_cy_1_rt_173
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_h_count_r(9),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_xor_9_rt_174
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_v_count_r(9),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_xor_9_rt_175
    );
  vga_top_i_vga_i_vga_sync_i_vert_sync_r_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_val2_67,
      I1 => vga_top_i_vga_i_vga_sync_i_vert_sync_r_114,
      I2 => vga_top_i_vga_i_vga_sync_i_GND_11_o_INV_11_o_111,
      O => vga_top_i_vga_i_vga_sync_i_vert_sync_r_rstpot_176
    );
  vga_top_i_vga_i_vga_sync_i_vert_sync_r : FDS
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_vert_sync_r_rstpot_176,
      S => vga_top_i_vga_i_vga_sync_i_rst_n_i_inv,
      Q => vga_top_i_vga_i_vga_sync_i_vert_sync_r_114
    );
  vga_top_i_vga_i_vga_sync_i_sync_d_r : FD
    port map (
      C => vga_top_i_vga_i_clk_s,
      D => vga_top_i_vga_i_vga_sync_i_sync_d_r_rstpot_177,
      Q => vga_top_i_vga_i_vga_sync_i_sync_d_r_116
    );
  vga_top_i_text_mem_i_Mmux_index31 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(11),
      I1 => vga_top_i_txt_rom_addr_c(12),
      I2 => vga_top_i_txt_rom_addr_c(13),
      O => vga_top_i_text_mem_i_index(11)
    );
  vga_top_i_text_mem_i_Mmux_index21 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(10),
      I1 => vga_top_i_txt_rom_addr_c(12),
      I2 => vga_top_i_txt_rom_addr_c(13),
      O => vga_top_i_text_mem_i_index(10)
    );
  vga_top_i_text_mem_i_Mmux_index131 : LUT6
    generic map(
      INIT => X"000000F0000010F0"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(10),
      I1 => vga_top_i_txt_rom_addr_c(11),
      I2 => vga_top_i_txt_rom_addr_c(9),
      I3 => vga_top_i_txt_rom_addr_c(12),
      I4 => vga_top_i_txt_rom_addr_c(13),
      I5 => N2,
      O => vga_top_i_text_mem_i_index(9)
    );
  vga_top_i_text_mem_i_Mmux_index41 : LUT6
    generic map(
      INIT => X"0000000400040004"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(13),
      I1 => vga_top_i_txt_rom_addr_c(12),
      I2 => vga_top_i_txt_rom_addr_c(11),
      I3 => vga_top_i_txt_rom_addr_c(10),
      I4 => vga_top_i_txt_rom_addr_c(9),
      I5 => N2,
      O => vga_top_i_text_mem_i_index(12)
    );
  vga_top_i_text_mem_i_index_t_30_GND_22_o_LessThan_5_o1_SW2 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(11),
      I1 => vga_top_i_txt_rom_addr_c(10),
      O => N16
    );
  vga_top_i_text_mem_i_Mmux_index111 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(7),
      I1 => vga_top_i_txt_rom_addr_c(9),
      I2 => vga_top_i_txt_rom_addr_c(12),
      I3 => vga_top_i_txt_rom_addr_c(13),
      I4 => N16,
      I5 => N2,
      O => vga_top_i_text_mem_i_index(7)
    );
  vga_top_i_text_mem_i_Mmux_index101 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(6),
      I1 => vga_top_i_txt_rom_addr_c(9),
      I2 => vga_top_i_txt_rom_addr_c(12),
      I3 => vga_top_i_txt_rom_addr_c(13),
      I4 => N16,
      I5 => N2,
      O => vga_top_i_text_mem_i_index(6)
    );
  vga_top_i_text_mem_i_Mmux_index91 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(5),
      I1 => vga_top_i_txt_rom_addr_c(9),
      I2 => vga_top_i_txt_rom_addr_c(12),
      I3 => vga_top_i_txt_rom_addr_c(13),
      I4 => N16,
      I5 => N2,
      O => vga_top_i_text_mem_i_index(5)
    );
  vga_top_i_text_mem_i_Mmux_index81 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(4),
      I1 => vga_top_i_txt_rom_addr_c(9),
      I2 => vga_top_i_txt_rom_addr_c(12),
      I3 => vga_top_i_txt_rom_addr_c(13),
      I4 => N16,
      I5 => N2,
      O => vga_top_i_text_mem_i_index(4)
    );
  vga_top_i_text_mem_i_Mmux_index71 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(3),
      I1 => vga_top_i_txt_rom_addr_c(9),
      I2 => vga_top_i_txt_rom_addr_c(12),
      I3 => vga_top_i_txt_rom_addr_c(13),
      I4 => N16,
      I5 => N2,
      O => vga_top_i_text_mem_i_index(3)
    );
  vga_top_i_text_mem_i_Mmux_index61 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(2),
      I1 => vga_top_i_txt_rom_addr_c(9),
      I2 => vga_top_i_txt_rom_addr_c(12),
      I3 => vga_top_i_txt_rom_addr_c(13),
      I4 => N16,
      I5 => N2,
      O => vga_top_i_text_mem_i_index(2)
    );
  vga_top_i_text_mem_i_Mmux_index51 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(1),
      I1 => vga_top_i_txt_rom_addr_c(9),
      I2 => vga_top_i_txt_rom_addr_c(12),
      I3 => vga_top_i_txt_rom_addr_c(13),
      I4 => N16,
      I5 => N2,
      O => vga_top_i_text_mem_i_index(1)
    );
  vga_top_i_text_mem_i_Mmux_index11 : LUT6
    generic map(
      INIT => X"000A002A000A00AA"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(0),
      I1 => vga_top_i_txt_rom_addr_c(9),
      I2 => vga_top_i_txt_rom_addr_c(12),
      I3 => vga_top_i_txt_rom_addr_c(13),
      I4 => N16,
      I5 => N2,
      O => vga_top_i_text_mem_i_index(0)
    );
  vga_top_i_text_mem_i_Mmux_index121 : LUT6
    generic map(
      INIT => X"000000000002AAAA"
    )
    port map (
      I0 => vga_top_i_txt_rom_addr_c(8),
      I1 => vga_top_i_txt_rom_addr_c(10),
      I2 => vga_top_i_txt_rom_addr_c(11),
      I3 => vga_top_i_txt_rom_addr_c(9),
      I4 => vga_top_i_txt_rom_addr_c(12),
      I5 => vga_top_i_txt_rom_addr_c(13),
      O => vga_top_i_text_mem_i_index(8)
    );
  vga_top_i_vga_i_vga_sync_i_sync_d_r_rstpot : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => vga_top_i_vga_i_vga_sync_i_horiz_sync_r_115,
      I1 => vga_top_i_vga_i_vga_sync_i_vert_sync_r_114,
      I2 => vga_top_i_vga_i_locked_del_reg_r_28,
      O => vga_top_i_vga_i_vga_sync_i_sync_d_r_rstpot_177
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_lut_0_INV_0 : INV
    port map (
      I => vga_top_i_vga_i_vga_sync_i_h_count_r(0),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_h_count_r_lut(0)
    );
  vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_lut_0_INV_0 : INV
    port map (
      I => vga_top_i_vga_i_vga_sync_i_v_count_r(0),
      O => vga_top_i_vga_i_vga_sync_i_Mcount_v_count_r_lut(0)
    );
  pix_clock_n1_INV_0 : INV
    port map (
      I => vga_top_i_vga_i_clk_s,
      O => pix_clock_n
    );
  vga_top_i_vga_i_rst_n_i_inv1_INV_0 : INV
    port map (
      I => reset_n_i_IBUF_1,
      O => vga_top_i_vga_i_rst_n_i_inv
    );
  vga_top_i_vga_i_vga_sync_i_rst_n_i_inv1_INV_0 : INV
    port map (
      I => vga_top_i_vga_i_locked_del_reg_r_28,
      O => vga_top_i_vga_i_vga_sync_i_rst_n_i_inv
    );
  vga_top_i_text_mem_i_Mram_text_mem3 : RAMB16BWER
    generic map(
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      DATA_WIDTH_A => 2,
      DATA_WIDTH_B => 2,
      DOA_REG => 0,
      DOB_REG => 0,
      EN_RSTRAM_A => TRUE,
      EN_RSTRAM_B => TRUE,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      RSTTYPE => "SYNC",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "SPARTAN6",
      INIT_FILE => "NONE"
    )
    port map (
      REGCEA => pixel_we,
      CLKA => vga_top_i_vga_i_clk_s,
      ENB => direct_mode,
      RSTB => pixel_we,
      CLKB => vga_top_i_vga_i_clk_s,
      REGCEB => pixel_we,
      RSTA => pixel_we,
      ENA => direct_mode,
      DIPA(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPA_3_UNCONNECTED,
      DIPA(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPA_2_UNCONNECTED,
      DIPA(1) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPA_1_UNCONNECTED,
      DIPA(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPA_0_UNCONNECTED,
      WEA(3) => pixel_we,
      WEA(2) => pixel_we,
      WEA(1) => pixel_we,
      WEA(0) => pixel_we,
      DOA(31) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_31_UNCONNECTED,
      DOA(30) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_30_UNCONNECTED,
      DOA(29) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_29_UNCONNECTED,
      DOA(28) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_28_UNCONNECTED,
      DOA(27) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_27_UNCONNECTED,
      DOA(26) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_26_UNCONNECTED,
      DOA(25) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_25_UNCONNECTED,
      DOA(24) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_24_UNCONNECTED,
      DOA(23) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_23_UNCONNECTED,
      DOA(22) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_22_UNCONNECTED,
      DOA(21) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_21_UNCONNECTED,
      DOA(20) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_20_UNCONNECTED,
      DOA(19) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_19_UNCONNECTED,
      DOA(18) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_18_UNCONNECTED,
      DOA(17) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_17_UNCONNECTED,
      DOA(16) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_16_UNCONNECTED,
      DOA(15) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_15_UNCONNECTED,
      DOA(14) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_14_UNCONNECTED,
      DOA(13) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_13_UNCONNECTED,
      DOA(12) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_12_UNCONNECTED,
      DOA(11) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_11_UNCONNECTED,
      DOA(10) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_10_UNCONNECTED,
      DOA(9) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_9_UNCONNECTED,
      DOA(8) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_8_UNCONNECTED,
      DOA(7) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_7_UNCONNECTED,
      DOA(6) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_6_UNCONNECTED,
      DOA(5) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_5_UNCONNECTED,
      DOA(4) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_4_UNCONNECTED,
      DOA(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_3_UNCONNECTED,
      DOA(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_2_UNCONNECTED,
      DOA(1) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_1_UNCONNECTED,
      DOA(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOA_0_UNCONNECTED,
      ADDRA(13) => pixel_we,
      ADDRA(12) => pixel_we,
      ADDRA(11) => pixel_we,
      ADDRA(10) => pixel_we,
      ADDRA(9) => pixel_we,
      ADDRA(8) => pixel_we,
      ADDRA(7) => pixel_we,
      ADDRA(6) => pixel_we,
      ADDRA(5) => pixel_we,
      ADDRA(4) => pixel_we,
      ADDRA(3) => pixel_we,
      ADDRA(2) => pixel_we,
      ADDRA(1) => pixel_we,
      ADDRA(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_ADDRA_0_UNCONNECTED,
      ADDRB(13) => vga_top_i_text_mem_i_index(12),
      ADDRB(12) => vga_top_i_text_mem_i_index(11),
      ADDRB(11) => vga_top_i_text_mem_i_index(10),
      ADDRB(10) => vga_top_i_text_mem_i_index(9),
      ADDRB(9) => vga_top_i_text_mem_i_index(8),
      ADDRB(8) => vga_top_i_text_mem_i_index(7),
      ADDRB(7) => vga_top_i_text_mem_i_index(6),
      ADDRB(6) => vga_top_i_text_mem_i_index(5),
      ADDRB(5) => vga_top_i_text_mem_i_index(4),
      ADDRB(4) => vga_top_i_text_mem_i_index(3),
      ADDRB(3) => vga_top_i_text_mem_i_index(2),
      ADDRB(2) => vga_top_i_text_mem_i_index(1),
      ADDRB(1) => vga_top_i_text_mem_i_index(0),
      ADDRB(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_ADDRB_0_UNCONNECTED,
      DIB(31) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_31_UNCONNECTED,
      DIB(30) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_30_UNCONNECTED,
      DIB(29) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_29_UNCONNECTED,
      DIB(28) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_28_UNCONNECTED,
      DIB(27) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_27_UNCONNECTED,
      DIB(26) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_26_UNCONNECTED,
      DIB(25) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_25_UNCONNECTED,
      DIB(24) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_24_UNCONNECTED,
      DIB(23) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_23_UNCONNECTED,
      DIB(22) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_22_UNCONNECTED,
      DIB(21) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_21_UNCONNECTED,
      DIB(20) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_20_UNCONNECTED,
      DIB(19) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_19_UNCONNECTED,
      DIB(18) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_18_UNCONNECTED,
      DIB(17) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_17_UNCONNECTED,
      DIB(16) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_16_UNCONNECTED,
      DIB(15) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_15_UNCONNECTED,
      DIB(14) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_14_UNCONNECTED,
      DIB(13) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_13_UNCONNECTED,
      DIB(12) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_12_UNCONNECTED,
      DIB(11) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_11_UNCONNECTED,
      DIB(10) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_10_UNCONNECTED,
      DIB(9) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_9_UNCONNECTED,
      DIB(8) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_8_UNCONNECTED,
      DIB(7) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_7_UNCONNECTED,
      DIB(6) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_6_UNCONNECTED,
      DIB(5) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_5_UNCONNECTED,
      DIB(4) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_4_UNCONNECTED,
      DIB(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_3_UNCONNECTED,
      DIB(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_2_UNCONNECTED,
      DIB(1) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_1_UNCONNECTED,
      DIB(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIB_0_UNCONNECTED,
      DOPA(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPA_2_UNCONNECTED,
      DOPA(1) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPA_1_UNCONNECTED,
      DOPA(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPA_0_UNCONNECTED,
      DIPB(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPB_3_UNCONNECTED,
      DIPB(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPB_2_UNCONNECTED,
      DIPB(1) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPB_1_UNCONNECTED,
      DIPB(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIPB_0_UNCONNECTED,
      DOPB(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPB_2_UNCONNECTED,
      DOPB(1) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPB_1_UNCONNECTED,
      DOPB(0) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOPB_0_UNCONNECTED,
      DOB(31) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_31_UNCONNECTED,
      DOB(30) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_30_UNCONNECTED,
      DOB(29) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_29_UNCONNECTED,
      DOB(28) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_28_UNCONNECTED,
      DOB(27) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_27_UNCONNECTED,
      DOB(26) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_26_UNCONNECTED,
      DOB(25) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_25_UNCONNECTED,
      DOB(24) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_24_UNCONNECTED,
      DOB(23) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_23_UNCONNECTED,
      DOB(22) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_22_UNCONNECTED,
      DOB(21) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_21_UNCONNECTED,
      DOB(20) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_20_UNCONNECTED,
      DOB(19) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_19_UNCONNECTED,
      DOB(18) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_18_UNCONNECTED,
      DOB(17) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_17_UNCONNECTED,
      DOB(16) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_16_UNCONNECTED,
      DOB(15) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_15_UNCONNECTED,
      DOB(14) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_14_UNCONNECTED,
      DOB(13) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_13_UNCONNECTED,
      DOB(12) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_12_UNCONNECTED,
      DOB(11) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_11_UNCONNECTED,
      DOB(10) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_10_UNCONNECTED,
      DOB(9) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_9_UNCONNECTED,
      DOB(8) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_8_UNCONNECTED,
      DOB(7) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_7_UNCONNECTED,
      DOB(6) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_6_UNCONNECTED,
      DOB(5) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_5_UNCONNECTED,
      DOB(4) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_4_UNCONNECTED,
      DOB(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_3_UNCONNECTED,
      DOB(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DOB_2_UNCONNECTED,
      DOB(1) => vga_top_i_char_addr_s(5),
      DOB(0) => vga_top_i_char_addr_s(4),
      WEB(3) => pixel_we,
      WEB(2) => pixel_we,
      WEB(1) => pixel_we,
      WEB(0) => pixel_we,
      DIA(31) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_31_UNCONNECTED,
      DIA(30) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_30_UNCONNECTED,
      DIA(29) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_29_UNCONNECTED,
      DIA(28) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_28_UNCONNECTED,
      DIA(27) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_27_UNCONNECTED,
      DIA(26) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_26_UNCONNECTED,
      DIA(25) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_25_UNCONNECTED,
      DIA(24) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_24_UNCONNECTED,
      DIA(23) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_23_UNCONNECTED,
      DIA(22) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_22_UNCONNECTED,
      DIA(21) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_21_UNCONNECTED,
      DIA(20) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_20_UNCONNECTED,
      DIA(19) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_19_UNCONNECTED,
      DIA(18) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_18_UNCONNECTED,
      DIA(17) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_17_UNCONNECTED,
      DIA(16) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_16_UNCONNECTED,
      DIA(15) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_15_UNCONNECTED,
      DIA(14) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_14_UNCONNECTED,
      DIA(13) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_13_UNCONNECTED,
      DIA(12) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_12_UNCONNECTED,
      DIA(11) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_11_UNCONNECTED,
      DIA(10) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_10_UNCONNECTED,
      DIA(9) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_9_UNCONNECTED,
      DIA(8) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_8_UNCONNECTED,
      DIA(7) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_7_UNCONNECTED,
      DIA(6) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_6_UNCONNECTED,
      DIA(5) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_5_UNCONNECTED,
      DIA(4) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_4_UNCONNECTED,
      DIA(3) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_3_UNCONNECTED,
      DIA(2) => NLW_vga_top_i_text_mem_i_Mram_text_mem3_DIA_2_UNCONNECTED,
      DIA(1) => pixel_we,
      DIA(0) => pixel_we
    );
  vga_top_i_char_rom_i_BRAM_MEM_I : char_rom_def
    port map (
      clk => vga_top_i_vga_i_clk_s,
      dout(7) => NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_7_UNCONNECTED,
      dout(6) => NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_6_UNCONNECTED,
      dout(5) => NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_5_UNCONNECTED,
      dout(4) => NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_4_UNCONNECTED,
      dout(3) => NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_3_UNCONNECTED,
      dout(2) => NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_2_UNCONNECTED,
      dout(1) => NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_1_UNCONNECTED,
      dout(0) => NLW_vga_top_i_char_rom_i_BRAM_MEM_I_dout_0_UNCONNECTED,
      addr(8) => vga_top_i_char_addr_s(5),
      addr(7) => vga_top_i_char_addr_s(4),
      addr(6) => vga_top_i_char_addr_s(5),
      addr(5) => vga_top_i_char_addr_s(4),
      addr(4) => vga_top_i_char_addr_s(5),
      addr(3) => vga_top_i_char_addr_s(4),
      addr(2) => vga_top_i_vga_i_vga_sync_i_v_count_r(3),
      addr(1) => vga_top_i_vga_i_vga_sync_i_v_count_r(2),
      addr(0) => vga_top_i_vga_i_vga_sync_i_v_count_r(1)
    );

end Structure;

-- synthesis translate_on
