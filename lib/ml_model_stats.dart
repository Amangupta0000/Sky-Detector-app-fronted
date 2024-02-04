import 'dart:io';

import 'package:flutter/material.dart';

class ImageDetailScreen extends StatelessWidget {
  const ImageDetailScreen({super.key, required this.file});
  final file;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.all(15),
              height: 300,
              child: ClipRRect(child: Image.file(File(file!.path))),
            ),
          ),
        ],
      ),
    ));
  }
}
