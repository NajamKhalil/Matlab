/*
 * File: eml_rand_shr3cong_stateful.c
 *
 * MATLAB Coder version            : 4.2
 * C/C++ source code generated on  : 05-Oct-2020 01:22:55
 */

/* Include Files */
#include "randomNumber.h"
#include "eml_rand_shr3cong_stateful.h"
#include "randomNumber_data.h"

/* Function Definitions */

/*
 * Arguments    : void
 * Return Type  : void
 */
void eml_rand_shr3cong_stateful_init(void)
{
  b_state[0] = 362436069U;
  b_state[1] = 521288629U;
}

/*
 * File trailer for eml_rand_shr3cong_stateful.c
 *
 * [EOF]
 */
