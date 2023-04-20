import 'package:flutter/material.dart';
import 'package:opencv_4/opencv_4.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _picker = ImagePicker();
  File? _image;

  Future<void> _getImage(ImageSource source) async{
    final pickedFile = await _picker.pickImage(source: source);
    _image = pickedFile != null ? File(pickedFile.path) : null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("opencv"),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
