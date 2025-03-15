# Camera and Filter Application

## Author
**Miftahudin Aldi Saputra**  
NIM: 1122140079

## Project Overview
This Flutter application demonstrates camera functionality and image filtering capabilities.

## Screenshots
Hasil penggabungan dari praktikum 1 dan 2
praktikum 1 aplikasi hanya open kamera lalu ketika di take picture tampil foto.
praktikum 2 aplikasi menampilkan filter dari foto.

<img src="https://github.com/Mifta24/tugas-kamera-flutter/blob/main/assets/images/take.jpg" width="400px"  >
<img src="https://github.com/Mifta24/tugas-kamera-flutter/blob/main/assets/images/filter.jpg" width="400px" " >

## Features
- Camera capture
- Image filters
- Real-time filter preview
- Photo saving functionality

## Technical Questions & Answers

### 1. Jelaskan maksud `void async` pada praktikum 1?
Maksud void async pada praktikum 1 adalah untuk memastikan bahwa semua operasi atau fungsi asinkron sebelum aplikasi dijalankan. Seprti memastikan bahwa plugin kamera sudah di inisialisasi dan kamera sudah ready

### Jelaskan fungsi dari anotasi `@immutable` dan `@override` ?

#### `@immutable`
@immutable adalah anotasi yang menandakan bahwa sebuah class tidak dapat diubah (immutable) setelah dibuat. ciri imutable field harus final.

#### `@override`
@override menandakan bahwa method tersebut menimpa (override) method dari class parent/superclass.

## Installation

1. Clone the repository
```bash
git clone https://github.com/Mifta24/tugas-kamera-flutter.git
```

2. Install dependencies
```bash
flutter pub get
```

3. Run the application
```bash
flutter run
```

## Dependencies
- camera: ^0.11.1
- camera_web: ^0.3.5
- path_provider: ^2.1.5
- path: ^1.9.0

## License
[Add your license information here]
