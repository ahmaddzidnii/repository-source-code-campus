/***
Kode ini digunakan untuk membaca nilai dari sensor cahaya yang terhubung ke pin analog A5 dan mengontrol LED bawaan (LAMPU) berdasarkan nilai cahaya yang diterima. LED akan menyala jika nilai cahaya di bawah 50 dan mati jika nilai cahaya di atas atau sama dengan 50.
*/

#define LAMPU 2 // Mendefinisikan lampu pada pin 2 digital PWM

void setup() {
Serial.begin(9600);           // Menginisialisasi komunikasi serial pada baud rate 9600 bps. Ini digunakan untuk mengirim data ke komputer untuk pemantauan nilai cahaya.
pinMode(LAMPU,OUTPUT);  // Mengatur pin LAMPU atau pin 13 Pada digital PWM sebagai output.
pinMode(A5, INPUT);           // Mengatur pin A5 sebagai input untuk membaca nilai dari sensor cahaya.
}

void nyalakan(int nilai){
  if(nilai < 80){
    digitalWrite(LAMPU, HIGH); //Menyalakan lampu LAMPU atau pin 13 Pada digital PWM
  } else {
    digitalWrite(LAMPU, LOW); //Mematikan lampu LAMPU atau pin 13 Pada digital PWM
  };
}

void loop() {
  int nilai_cahaya = analogRead(A5); //Membaca nilai analog dari pin A5 (sensor cahaya) dan menyimpannya dalam variabel nilai_cahaya.
  Serial.println(nilai_cahaya); // Mengirim nilai cahaya yang dibaca ke monitor serial untuk pemantauan.
  delay(1000);
  nyalakan(nilai_cahaya); //  Fungsi ini mengontrol status LED berdasarkan nilai cahaya yang diterima. Jika nilai kurang dari 50, LED akan dinyalakan (HIGH), jika tidak, LED akan dimatikan (LOW).
}
