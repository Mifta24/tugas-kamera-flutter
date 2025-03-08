import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter/services.dart';
import 'displaypicture_screen.dart';

class TakepictureScreen extends StatefulWidget {
  const TakepictureScreen({super.key, required this.camera});

  final CameraDescription camera;

  @override
  State<TakepictureScreen> createState() => _TakepictureScreenState();
}

class _TakepictureScreenState extends State<TakepictureScreen> {
// untuk mengambil kamera
  late CameraController _controller;
  // untuk mengambil gambar dari kamera
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // Membuat CameraController
    _controller = CameraController(
      // CameraDescription
      widget.camera,
      // Resolusi gambar
      ResolutionPreset.medium,
    );

    // Inisialisasi CameraController
    _initializeControllerFuture = _controller.initialize();

    // Tambahkan konfigurasi orientasi
  _controller.lockCaptureOrientation(DeviceOrientation.portraitUp);
  
  }

  @override
  void dispose() {
    // Hapus CameraController
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Take a picture')),
      body: FutureBuilder<void>(
          // Inisialisasi CameraController
          future: _initializeControllerFuture,
          // Widget yang akan ditampilkan ketika future selesai
          builder: (context, snapshot) {
            // Jika CameraController sudah selesai diinisialisasi
            if (snapshot.connectionState == ConnectionState.done) {
              return CameraPreview(_controller);
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.camera_alt),
        // Ketika tombol ditekan
        onPressed: () async {
          try {
            // Ambil gambar dari kamera
            await _initializeControllerFuture;

            // Simpan gambar yang diambil
            final image = await _controller.takePicture();

            // jika foto sudah diambil
            await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DisplaypictureScreen(imagePath: image.path),
              ),
            );
            // Pindah ke halaman detail
           
          } catch (e) {
            // Jika terjadi error
            print(e);
          }
        },
      ),
    );
  }
}
