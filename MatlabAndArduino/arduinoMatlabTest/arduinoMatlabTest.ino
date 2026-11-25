#include "modulus.h"
#include "modulus_terminate.h"
#include "modulus_initialize.h"
#include "modulus.c"
#include "modulus_terminate.c"
#include "modulus_initialize.c"
int i=1;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
      Serial.println(modulus(i,2));
      i++;
}
