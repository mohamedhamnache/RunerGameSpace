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
static const char *ng0 = "D:/Etudes/2CS 2017-2018/S2/SEMB/Mini-Projet/RunnerGameProjectV2/sseg_dec.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3125025815_0425602055_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    int t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(270, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(278, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 3216);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = t2;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3072);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(271, ng0);
    t3 = (t0 + 1768U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t3 = (t0 + 1648U);
    t6 = *((char **)t3);
    t7 = *((int *)t6);
    t8 = (t5 == t7);
    if (t8 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(275, ng0);
    t1 = (t0 + 1768U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t7 = (t5 + 1);
    t1 = (t0 + 1768U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t7;

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(272, ng0);
    t3 = (t0 + 1352U);
    t9 = *((char **)t3);
    t10 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t10);
    t3 = (t0 + 3152);
    t12 = (t3 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = t11;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(273, ng0);
    t1 = (t0 + 1768U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 0;
    goto LAB6;

}


extern void work_a_3125025815_0425602055_init()
{
	static char *pe[] = {(void *)work_a_3125025815_0425602055_p_0};
	xsi_register_didat("work_a_3125025815_0425602055", "isim/testBenchFile_isim_beh.exe.sim/work/a_3125025815_0425602055.didat");
	xsi_register_executes(pe);
}
