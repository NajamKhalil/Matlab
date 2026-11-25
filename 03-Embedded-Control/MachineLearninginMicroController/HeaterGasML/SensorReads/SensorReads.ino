#include "DHT.h"
//For DHT
#define DHTPIN 4 //Gas
#define DHTTYPE DHT22 //Type of Sensor
DHT dht(DHTPIN, DHTTYPE); //DHT defination
//For Gas
#define LED_BUILTIN 0
#define SENSOR  2
long currentMillis = 0;
long previousMillis = 0;
int interval = 1000;
boolean ledState = LOW;
float calibrationFactor = 4.5;
volatile byte pulseCount;
byte pulse1Sec = 0;
float flowRate;
unsigned int flowMilliLitres;
unsigned long totalMilliLitres;
//For Current
const int sensorIn = 27;
int mVperAmp = 66; // use 185 for 5A, 100 for 20A Module and 66 for 30A Module
double Voltage = 0;
double VRMS = 0;
double AmpsRMS = 0;
//For Relay
#define relayPin 12
//All three Sensors
unsigned long gas;
double temp;
double current;
//Interrrupt///////////////////////////////////////////////////////
void IRAM_ATTR pulseCounter()
{
  pulseCount++;
}
//MAIN Setup///////////////////////////////////////////////////////
void setup() {
  InitializingEveryThing();
}
//Initialization///////////////////////////////////////////////////////
void InitializingEveryThing(){
  //BaudRate
  Serial.begin(9600);
  //DHT Sensor
  dht.begin();
  pinMode(DHTPIN,INPUT);
  //Current Sensor
  pinMode(sensorIn, INPUT);
  //Gas Sensor
  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(SENSOR, INPUT_PULLUP);
  pulseCount = 0;
  flowRate = 0.0;
  flowMilliLitres = 0;
  totalMilliLitres = 0;
  previousMillis = 0;
  attachInterrupt(digitalPinToInterrupt(SENSOR), pulseCounter, FALLING);
  //Relay
  pinMode(relayPin,OUTPUT);
  digitalWrite(relayPin,HIGH);
  }
//MainLoopCode///////////////////////////////////////////////////////
void loop() {
  // put your main code here, to run repeatedly:
  gasflow();
  temp= tempRead();
  current= currentRead();
  Serial.print("gas:");Serial.print(gas);
  Serial.print("\ttemp:");Serial.print(temp);
  Serial.print("\tcurrent:");Serial.println(current);

}
//TempretureReadFunction///////////////////////////////////////////////////////
float tempRead(){
  float t = dht.readTemperature();
  return t;
  }
//CurrentReadFunction///////////////////////////////////////////////////////
float currentRead(){
  float result;
  int readValue; //value read from the sensor
  int maxValue = 0; // store max value here
  int minValue = 4096; // store min value here
  uint32_t start_time = millis();
  while((millis()-start_time) < 500) //sampling
  {
  readValue = analogRead(sensorIn);
  // see if you have a new maxValue
  if (readValue > maxValue)
  {
  /*record the maximum sensor value*/
  maxValue = readValue;
  }
  if (readValue < minValue)
  {
  /*record the maximum sensor value*/
  minValue = readValue;
  }
  }
  // Subtract min from max
  result = ((maxValue - minValue) * 5)/1024.0;
  Voltage = result;
  VRMS = (Voltage/2.0) *0.707; // sq root
  AmpsRMS = (VRMS * 1000)/mVperAmp;
  if(AmpsRMS-1.3>0){
  return AmpsRMS-1.3;
  }
  else{
    return 0;
    }
}
//GasRead FUnction///////////////////////////////////////////////////////
void gasflow(){
  currentMillis = millis();
  if (currentMillis - previousMillis > interval) {
    
    pulse1Sec = pulseCount;
    pulseCount = 0;
    flowRate = ((1000.0 / (millis() - previousMillis)) * pulse1Sec) / calibrationFactor;
    previousMillis = millis();
    flowMilliLitres = (flowRate / 60) * 1000;
  // Add the millilitres passed in this second to the cumulative total
    totalMilliLitres += flowMilliLitres;
    gas= totalMilliLitres;
    Serial.print("Flow rate: ");
    Serial.print(int(flowRate));  // Print the integer part of the variable
    Serial.print("L/min");
    Serial.print("\t");       // Print tab space

    // Print the cumulative total of litres flowed since starting
    Serial.print("Output Liquid Quantity: ");
    Serial.print(totalMilliLitres);
    Serial.print("mL / ");
    Serial.print(totalMilliLitres / 1000);
    Serial.println("L");
  }
   }
///////////////////////////////////////////////////////
