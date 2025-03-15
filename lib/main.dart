import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kamera_flutter/widget/takepicture_screen.dart';

Future<void> main() async {
  // Pastikan bahwa plugin kamera sudah diinisialisasi
  WidgetsFlutterBinding.ensureInitialized();

// Lock orientasi
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  // Mendapatkan daftar kamera yang tersedia
  final cameras = await availableCameras();
  // Mengambil kamera pertama
  final firstCamera = cameras.first;

  runApp(MyApp(camera: firstCamera));
}

class MyApp extends StatelessWidget {
  final CameraDescription camera;

  const MyApp({
    super.key,
    required this.camera,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Take a picture Nim: 1122140079',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TakepictureScreen(camera: camera),
    );
  }
}
