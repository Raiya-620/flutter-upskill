import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  XFile? file;
  ImagePicker _picker = ImagePicker();
  List<XFile>? files;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Image Picker Widget'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.grey[200],
              child: Center(
                child: file == null
                    ? const Text('Image not picked')
                    : Image.file(
                        File(file!.path),
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                final XFile? photo =
                    await _picker.pickImage(source: ImageSource.gallery);
                setState(() {
                  file = photo;
                });
                print('Image picked');
              },
              child: const Text('Choose Image'),
            ),
                        ElevatedButton(
              onPressed: () async {
                final List<XFile>? photos = await _picker.pickMultiImage();
                setState(() {
                  files = photos;
                });
                print('Images picked');
              },
              child: const Text('Choose Image'),
            ),
          ],
        ),
      ),
    );
  }
}
