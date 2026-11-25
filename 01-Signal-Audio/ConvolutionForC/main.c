#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	const double input1[5]={1,2,3,4,5};
	const double input2[5]={5,4,3,2,1};
	double output[9];
	Convolution(input1,input2,output);
	printf("A=%f,%f,%f,%f,%f\n",input1[0],input1[1],input1[2],input1[3],input1[4]);
	printf("B=%f,%f,%f,%f,%f\n",input2[0],input2[1],input2[2],input2[3],input2[4]);
	printf("Convolution=%f,%f,%f,%f,%f,%f,%f,%f,%f\n",output[0],output[1],output[2],output[3],output[4],output[5],output[6],output[7],output[8]);
	return 0;
}
