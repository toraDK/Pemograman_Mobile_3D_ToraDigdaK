import 'dart:io';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DisplayPictureScreen extends StatefulWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  State<DisplayPictureScreen> createState() => _DisplayPictureScreenState();
}

class _DisplayPictureScreenState extends State<DisplayPictureScreen> {
  int _currentIndex = 0;

  final List<Map<String, dynamic>> filters = [
    {'name': 'Normal', 'colorFilter': null},
    {
      'name': 'Grayscale',
      'colorFilter':
          const ColorFilter.matrix(<double>[
            0.2126, 0.7152, 0.0722, 0, 0,
            0.2126, 0.7152, 0.0722, 0, 0,
            0.2126, 0.7152, 0.0722, 0, 0,
            0, 0, 0, 1, 0
          ])
    },
    {
      'name': 'Sepia',
      'colorFilter':
          const ColorFilter.matrix(<double>[
            0.393, 0.769, 0.189, 0, 0,
            0.349, 0.686, 0.168, 0, 0,
            0.272, 0.534, 0.131, 0, 0,
            0, 0, 0, 1, 0
          ])
    },
    {
      'name': 'Invert',
      'colorFilter':
          const ColorFilter.matrix(<double>[
            -1, 0, 0, 0, 255,
            0, -1, 0, 0, 255,
            0, 0, -1, 0, 255,
            0, 0, 0, 1, 0
          ])
    },
  ];

  @override
  Widget build(BuildContext context) {
    final imageFile = File(widget.imagePath);

    return Scaffold(
      appBar: AppBar(title: const Text('Display Picture - 2341720161')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CarouselSlider.builder(
              itemCount: filters.length,
              itemBuilder: (context, index, realIndex) {
                final filter = filters[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ColorFiltered(
                        colorFilter: filter['colorFilter'] ?? const ColorFilter.mode(
                          Colors.transparent, BlendMode.multiply),
                        child: Image.file(imageFile, fit: BoxFit.contain),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      filter['name'],
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                );
              },
              options: CarouselOptions(
                enlargeCenterPage: true,
                height: MediaQuery.of(context).size.height * 0.75,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Filter: ${filters[_currentIndex]['name']}',
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
