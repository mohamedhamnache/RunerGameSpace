/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Etudes/2CS 2017-2018/S2/SEMB/Mini-Projet/RunnerGameProjectV2/vga_controller.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_1742983514_3965413181(char *, char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_4060537613_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_0132671222_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(128, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 6960);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 11U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 6768);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0132671222_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(129, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 7024);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 11U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 6784);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0132671222_3212880686_p_2(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(135, ng0);
    t1 = (t0 + 1152U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB3;

LAB4:
LAB2:    t11 = (t0 + 6800);
    *((int *)t11) = 1;

LAB1:    return;
LAB3:    t3 = (t0 + 2472U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t5);
    t3 = (t0 + 7088);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

}

static void work_a_0132671222_3212880686_p_3(char *t0)
{
    char t15[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t16;
    unsigned int t17;

LAB0:    xsi_set_current_line(141, ng0);
    t1 = (t0 + 1152U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6816);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(142, ng0);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t1 = (t0 + 11552U);
    t4 = (t0 + 2768U);
    t7 = *((char **)t4);
    t4 = (t0 + 11424U);
    t2 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t7, t4);
    if (t2 != 0)
        goto LAB8;

LAB9:    xsi_set_current_line(147, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t1 = (t0 + 11552U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t15, t3, t1, 1);
    t7 = (t15 + 12U);
    t16 = *((unsigned int *)t7);
    t17 = (1U * t16);
    t2 = (11U != t17);
    if (t2 == 1)
        goto LAB10;

LAB11:    t8 = (t0 + 7152);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 11U);
    xsi_driver_first_trans_fast(t8);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(143, ng0);
    t3 = xsi_get_transient_memory(11U);
    memset(t3, 0, 11U);
    t7 = t3;
    memset(t7, (unsigned char)2, 11U);
    t8 = (t0 + 7152);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 11U);
    xsi_driver_first_trans_fast(t8);
    goto LAB6;

LAB8:    xsi_set_current_line(145, ng0);
    t8 = xsi_get_transient_memory(11U);
    memset(t8, 0, 11U);
    t9 = t8;
    memset(t9, (unsigned char)2, 11U);
    t10 = (t0 + 7152);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 11U);
    xsi_driver_first_trans_fast(t10);
    goto LAB6;

LAB10:    xsi_size_not_matching(11U, t17, 0);
    goto LAB11;

}

static void work_a_0132671222_3212880686_p_4(char *t0)
{
    char t19[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t20;
    unsigned int t21;

LAB0:    xsi_set_current_line(157, ng0);
    t1 = (t0 + 1152U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(158, ng0);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t1 = (t0 + 11552U);
    t4 = (t0 + 2768U);
    t7 = *((char **)t4);
    t4 = (t0 + 11424U);
    t2 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t7, t4);
    if (t2 != 0)
        goto LAB8;

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(159, ng0);
    t3 = xsi_get_transient_memory(11U);
    memset(t3, 0, 11U);
    t7 = t3;
    memset(t7, (unsigned char)2, 11U);
    t8 = (t0 + 7216);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 11U);
    xsi_driver_first_trans_fast(t8);
    goto LAB6;

LAB8:    xsi_set_current_line(161, ng0);
    t8 = (t0 + 2312U);
    t9 = *((char **)t8);
    t8 = (t0 + 11568U);
    t10 = (t0 + 2888U);
    t11 = *((char **)t10);
    t10 = (t0 + 11440U);
    t5 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t9, t8, t11, t10);
    if (t5 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(164, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 11568U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t19, t3, t1, 1);
    t7 = (t19 + 12U);
    t20 = *((unsigned int *)t7);
    t21 = (1U * t20);
    t2 = (11U != t21);
    if (t2 == 1)
        goto LAB13;

LAB14:    t8 = (t0 + 7216);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 11U);
    xsi_driver_first_trans_fast(t8);

LAB11:    goto LAB6;

LAB10:    xsi_set_current_line(162, ng0);
    t12 = xsi_get_transient_memory(11U);
    memset(t12, 0, 11U);
    t13 = t12;
    memset(t13, (unsigned char)2, 11U);
    t14 = (t0 + 7216);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t12, 11U);
    xsi_driver_first_trans_fast(t14);
    goto LAB11;

LAB13:    xsi_size_not_matching(11U, t21, 0);
    goto LAB14;

}

static void work_a_0132671222_3212880686_p_5(char *t0)
{
    char *t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned char t13;
    char *t14;
    char *t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(176, ng0);
    t1 = (t0 + 1152U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6848);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(177, ng0);
    t4 = (t0 + 2152U);
    t5 = *((char **)t4);
    t4 = (t0 + 11552U);
    t6 = (t0 + 3128U);
    t7 = *((char **)t6);
    t6 = (t0 + 11472U);
    t8 = ieee_p_3620187407_sub_4060537613_3965413181(IEEE_P_3620187407, t5, t4, t7, t6);
    if (t8 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(180, ng0);
    t1 = (t0 + 3728U);
    t4 = *((char **)t1);
    t2 = *((unsigned char *)t4);
    t3 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t2);
    t1 = (t0 + 7280);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(178, ng0);
    t14 = (t0 + 3728U);
    t15 = *((char **)t14);
    t16 = *((unsigned char *)t15);
    t14 = (t0 + 7280);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = t16;
    xsi_driver_first_trans_fast_port(t14);
    goto LAB6;

LAB8:    t9 = (t0 + 2152U);
    t10 = *((char **)t9);
    t9 = (t0 + 11552U);
    t11 = (t0 + 3248U);
    t12 = *((char **)t11);
    t11 = (t0 + 11488U);
    t13 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t10, t9, t12, t11);
    t3 = t13;
    goto LAB10;

}

static void work_a_0132671222_3212880686_p_6(char *t0)
{
    char *t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned char t13;
    char *t14;
    char *t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(192, ng0);
    t1 = (t0 + 1152U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6864);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(193, ng0);
    t4 = (t0 + 2312U);
    t5 = *((char **)t4);
    t4 = (t0 + 11568U);
    t6 = (t0 + 3488U);
    t7 = *((char **)t6);
    t6 = (t0 + 11520U);
    t8 = ieee_p_3620187407_sub_4060537613_3965413181(IEEE_P_3620187407, t5, t4, t7, t6);
    if (t8 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(196, ng0);
    t1 = (t0 + 3728U);
    t4 = *((char **)t1);
    t2 = *((unsigned char *)t4);
    t3 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t2);
    t1 = (t0 + 7344);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(194, ng0);
    t14 = (t0 + 3728U);
    t15 = *((char **)t14);
    t16 = *((unsigned char *)t15);
    t14 = (t0 + 7344);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = t16;
    xsi_driver_first_trans_fast_port(t14);
    goto LAB6;

LAB8:    t9 = (t0 + 2312U);
    t10 = *((char **)t9);
    t9 = (t0 + 11568U);
    t11 = (t0 + 3608U);
    t12 = *((char **)t11);
    t11 = (t0 + 11536U);
    t13 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t10, t9, t12, t11);
    t3 = t13;
    goto LAB10;

}

static void work_a_0132671222_3212880686_p_7(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(202, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 11552U);
    t4 = (t0 + 3008U);
    t5 = *((char **)t4);
    t4 = (t0 + 11456U);
    t6 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t3, t2, t5, t4);
    if (t6 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t17 = (t0 + 7408);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_first_trans_fast(t17);

LAB2:    t22 = (t0 + 6880);
    *((int *)t22) = 1;

LAB1:    return;
LAB3:    t12 = (t0 + 7408);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast(t12);
    goto LAB2;

LAB5:    t7 = (t0 + 2312U);
    t8 = *((char **)t7);
    t7 = (t0 + 11568U);
    t9 = (t0 + 3368U);
    t10 = *((char **)t9);
    t9 = (t0 + 11504U);
    t11 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t8, t7, t10, t9);
    t1 = t11;
    goto LAB7;

LAB9:    goto LAB2;

}


extern void work_a_0132671222_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0132671222_3212880686_p_0,(void *)work_a_0132671222_3212880686_p_1,(void *)work_a_0132671222_3212880686_p_2,(void *)work_a_0132671222_3212880686_p_3,(void *)work_a_0132671222_3212880686_p_4,(void *)work_a_0132671222_3212880686_p_5,(void *)work_a_0132671222_3212880686_p_6,(void *)work_a_0132671222_3212880686_p_7};
	xsi_register_didat("work_a_0132671222_3212880686", "isim/testBenchFile_isim_beh.exe.sim/work/a_0132671222_3212880686.didat");
	xsi_register_executes(pe);
}
