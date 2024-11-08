/***
Kode ini digunakan untuk membaca nilai dari sensor cahaya yang terhubung ke pin analog A5 dan mengontrol LED bawaan (LED_BUILTIN) berdasarkan nilai cahaya yang diterima. LED akan menyala jika nilai cahaya di bawah 50 dan mati jika nilai cahaya di atas atau sama dengan 50.
*/

void setup() {
Serial.begin(9600);           // Menginisialisasi komunikasi serial pada baud rate 9600 bps. Ini digunakan untuk mengirim data ke komputer untuk pemantauan nilai cahaya.
pinMode(LED_BUILTIN,OUTPUT);  // Mengatur pin LED_BUILTIN atau pin 13 Pada digital PWM sebagai output.
pinMode(A5, INPUT);           // Mengatur pin A5 sebagai input untuk membaca nilai dari sensor cahaya.
}

void nyalakan(int nilai){
  if(nilai < 50){
    digitalWrite(LED_BUILTIN, HIGH); //Menyalakan lampu LED_BUILTIN atau pin 13 Pada digital PWM
  } else {
    digitalWrite(LED_BUILTIN, LOW); //Mematikan lampu LED_BUILTIN atau pin 13 Pada digital PWM
  };
}

void loop() {
  int nilai_cahaya = analogRead(A5); //Membaca nilai analog dari pin A5 (sensor cahaya) dan menyimpannya dalam variabel nilai_cahaya.
  Serial.println(nilai_cahaya); // Mengirim nilai cahaya yang dibaca ke monitor serial untuk pemantauan.
  delay(500);
  nyalakan(nilai_cahaya); //  Fungsi ini mengontrol status LED berdasarkan nilai cahaya yang diterima. Jika nilai kurang dari 50, LED akan dinyalakan (HIGH), jika tidak, LED akan dimatikan (LOW).
}
