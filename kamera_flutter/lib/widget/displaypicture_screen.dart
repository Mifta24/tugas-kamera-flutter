import 'package:flutter/material.dart';
import 'dart:io';
import 'package:kamera_flutter/widget/filter_carousel.dart';


class DisplaypictureScreen extends StatelessWidget {
  const DisplaypictureScreen({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Apply Filter'),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              // Save filtered image and pop back
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PhotoFilterCarousel(
              imagePath: imagePath,
            ),
          ),
        ],
      ),
    );
  }
}