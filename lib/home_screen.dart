import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sky_detector_app/image_picker.dart';
import 'package:sky_detector_app/ml_model_stats.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  XFile? imageFile;
  final List imageList = [];
  Future pickImage(bool isGallery) async {
    final file = await pickMedia(isGallery: isGallery);
    if (file == null) return;
    setState(() {
      imageFile = file;
      imageList.add(file);
    });
    Navigator.of(context).push(
        MaterialPageRoute(builder: (ctx) => ImageDetailScreen(file: file)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sky Detector"),
        actions: [
          IconButton(
              onPressed: () async {
                FirebaseAuth auth = FirebaseAuth.instance;
                await auth.signOut();
              },
              icon: Icon(Icons.logout_rounded))
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    pickImage(false);
                  },
                  icon: Icon(Icons.camera_alt_rounded)),
              IconButton(
                  onPressed: () {
                    pickImage(true);
                  },
                  icon: Icon(Icons.photo_album)),
            ],
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: imageList.length,
                  itemBuilder: (ctx, index) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      height: 300,
                      child: ClipRRect(
                          child: Image.file(File(imageList[index]!.path))),
                    );
                  }))
        ],
      ),
    );
  }
}
