/*
 * File: randomNumber.c
 *
 * MATLAB Coder version            : 4.2
 * C/C++ source code generated on  : 05-Oct-2020 01:22:55
 */

/* Include Files */
#include <math.h>
#include "randomNumber.h"
#include "rand.h"
#include "randomNumber_data.h"
#include <windows.h>

/* Function Definitions */

/*
 * Arguments    : void
 * Return Type  : double
 */
double randomNumber(void)
{
  double output;
  output = 10.0 * b_rand();
  output = ceil(output);
  if (pauseState == 0) {
    Sleep(10000U);
  }

  return output;
}

/*
 * File trailer for randomNumber.c
 *
 * [EOF]
 */
