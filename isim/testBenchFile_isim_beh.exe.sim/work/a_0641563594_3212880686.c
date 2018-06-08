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
static const char *ng0 = "D:/Etudes/2CS 2017-2018/S2/SEMB/Mini-Projet/RunnerGameProjectV2/SR.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0641563594_3212880686_p_0(char *t0)
{
    char t18[16];
    char t19[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 992U);
    t1 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t2, 0U, 0U);
    if (t1 != 0)
        goto LAB8;

LAB9:
LAB3:    t2 = (t0 + 3560);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 5820);
    t10 = (t0 + 3656);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 32U);
    xsi_driver_first_trans_fast(t10);
    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 1192U);
    t6 = *((char **)t3);
    t4 = *((unsigned char *)t6);
    t3 = (t0 + 1832U);
    t9 = *((char **)t3);
    t15 = (31 - 31);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t3 = (t9 + t17);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t19 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 31;
    t13 = (t12 + 4U);
    *((int *)t13) = 1;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t20 = (1 - 31);
    t21 = (t20 * -1);
    t21 = (t21 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t21;
    t10 = xsi_base_array_concat(t10, t18, t11, (char)99, t4, (char)97, t3, t19, (char)101);
    t21 = (1U + 31U);
    t5 = (32U != t21);
    if (t5 == 1)
        goto LAB10;

LAB11:    t13 = (t0 + 3656);
    t14 = (t13 + 56U);
    t22 = *((char **)t14);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t10, 32U);
    xsi_driver_first_trans_fast(t13);
    goto LAB3;

LAB10:    xsi_size_not_matching(32U, t21, 0);
    goto LAB11;

}

static void work_a_0641563594_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(52, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 3720);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3576);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0641563594_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0641563594_3212880686_p_0,(void *)work_a_0641563594_3212880686_p_1};
	xsi_register_didat("work_a_0641563594_3212880686", "isim/testBenchFile_isim_beh.exe.sim/work/a_0641563594_3212880686.didat");
	xsi_register_executes(pe);
}
