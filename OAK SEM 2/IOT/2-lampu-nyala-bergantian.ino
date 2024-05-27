// Define pin numbers
const int ledHijau = 2;      // Pin untuk LED hijau

void setup() {
  // Initialize the LED pins as outputs
  pinMode(ledHijau, OUTPUT);
  pinMode(LED_BUILTIN, OUTPUT);
}

void loop() {
 // Turn on the green LED
  digitalWrite(ledHijau, HIGH);
  delay(1000);  

  // Turn off the green LED
  digitalWrite(ledHijau, LOW);
  
  // Turn on the built-in LED
  digitalWrite(LED_BUILTIN, HIGH);
  delay(1000);

  // Turn off the built-in LED
  digitalWrite(LED_BUILTIN, LOW);
}
