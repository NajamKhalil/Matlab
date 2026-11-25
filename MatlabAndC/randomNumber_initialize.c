/*
 * File: randomNumber_initialize.c
 *
 * MATLAB Coder version            : 4.2
 * C/C++ source code generated on  : 05-Oct-2020 01:22:55
 */

/* Include Files */
#include "randomNumber.h"
#include "randomNumber_initialize.h"
#include "pause.h"
#include "eml_rand_shr3cong_stateful.h"
#include "eml_rand_mcg16807_stateful.h"
#include "eml_rand.h"
#include "eml_rand_mt19937ar_stateful.h"

/* Function Definitions */

/*
 * Arguments    : void
 * Return Type  : void
 */
void randomNumber_initialize(void)
{
  state_not_empty_init();
  eml_rand_init();
  eml_rand_mcg16807_stateful_init();
  eml_rand_shr3cong_stateful_init();
  cpause_init();
}

/*
 * File trailer for randomNumber_initialize.c
 *
 * [EOF]
 */
