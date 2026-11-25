/*
 * File: palanFinder.c
 *
 * MATLAB Coder version            : 4.2
 * C/C++ source code generated on  : 06-Oct-2020 14:35:03
 */

/* Include Files */
#include "palanFinder.h"

/* Function Definitions */

/*
 * Arguments    : const rtString String
 * Return Type  : boolean_T
 */
boolean_T palanFinder(const rtString String,int length)
{
  boolean_T resultFlag;
  int i;
  boolean_T exitg1;
  resultFlag = false;
  i = 0;
  exitg1 = false;
  while ((!exitg1) && (i < 2)) {
    if (String.Value[i] == String.Value[length - i]) {
      resultFlag = true;
      i++;
    } else {
      resultFlag = false;
      exitg1 = true;
    }
  }

  return resultFlag;
}

/*
 * File trailer for palanFinder.c
 *
 * [EOF]
 */
