/*
 * File: main.c
 *
 * MATLAB Coder version            : 4.2
 * C/C++ source code generated on  : 06-Oct-2020 14:35:03
 */

/*************************************************************************/
/* This automatically generated example C main file shows how to call    */
/* entry-point functions that MATLAB Coder generated. You must customize */
/* this file for your application. Do not modify this file directly.     */
/* Instead, make a copy of this file, modify it, and integrate it into   */
/* your development environment.                                         */
/*                                                                       */
/* This file initializes entry-point function arguments to a default     */
/* size and value before calling the entry-point functions. It does      */
/* not store or use any values returned from the entry-point functions.  */
/* If necessary, it does pre-allocate memory for returned values.        */
/* You can use this file as a starting point for a main function that    */
/* you can deploy in your application.                                   */
/*                                                                       */
/* After you copy the file, and before you deploy it, you must make the  */
/* following changes:                                                    */
/* * For variable-size function arguments, change the example sizes to   */
/* the sizes that your application requires.                             */
/* * Change the example values of function arguments to the values that  */
/* your application requires.                                            */
/* * If the entry-point functions return values, store these values or   */
/* otherwise use them as required by your application.                   */
/*                                                                       */
/*************************************************************************/
/* Include Files */
#include "palanFinder.h"
#include "main.h"
#include "palanFinder_terminate.h"
#include "palanFinder_initialize.h"

/* Function Declarations */
static void argInit_1x5_char_T(char result[5]);
static char argInit_char_T(void);
static rtString argInit_rtString(void);
static void main_palanFinder(void);

/* Function Definitions */

/*
 * Arguments    : char result[5]
 * Return Type  : void
 */
static void argInit_1x5_char_T(char result[5])
{
  int idx1;

  /* Loop over the array to initialize each element. */
  for (idx1 = 0; idx1 < 5; idx1++) {
    /* Set the value of the array element.
       Change this value to the value that the application requires. */
    result[idx1] = argInit_char_T();
  }
}

/*
 * Arguments    : void
 * Return Type  : char
 */
static char argInit_char_T(void)
{
  return '?';
}

/*
 * Arguments    : void
 * Return Type  : rtString
 */
static rtString argInit_rtString(void)
{
  rtString result;

  /* Set the value of each structure field.
     Change this value to the value that the application requires. */
  argInit_1x5_char_T(result.Value);
  return result;
}

/*
 * Arguments    : void
 * Return Type  : void
 */
static void main_palanFinder(void)
{
  boolean_T resultFlag;

  /* Initialize function 'palanFinder' input arguments. */
  /* Initialize function input argument 'String'. */
  /* Call the entry-point 'palanFinder'. */
  resultFlag = palanFinder(argInit_rtString());
}

/*
 * Arguments    : int argc
 *                const char * const argv[]
 * Return Type  : int
 */
int main(int argc, const char * const argv[])
{
  (void)argc;
  (void)argv;

  /* Initialize the application.
     You do not need to do this more than one time. */
  palanFinder_initialize();

  /* Invoke the entry-point functions.
     You can call entry-point functions multiple times. */
  main_palanFinder();

  /* Terminate the application.
     You do not need to do this more than one time. */
  palanFinder_terminate();
  return 0;
}

/*
 * File trailer for main.c
 *
 * [EOF]
 */
