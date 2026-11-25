#include <stdio.h>
#include <stdlib.h>
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

  return output;
}

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int i;
	for(i=0;i<10;i++){
		int number=randomNumber();
		printf("Random Number is= %d\n",number);
	}
	return 0;
}

