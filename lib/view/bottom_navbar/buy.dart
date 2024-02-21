import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class BuyView extends StatelessWidget {
  File? filetoDisplay;
  PlatformFile? pickedFile;
  FilePickerResult? result;
  String? fileName;

  void pick() async {
    result = await FilePicker.platform
        .pickFiles(allowMultiple: false, type: FileType.image);
    if (result != null) {
      fileName = result!.files.first.name;
      pickedFile = result!.files.first;
      filetoDisplay = File(pickedFile!.path.toString());
    } else {
      print('[User canceled the picker]');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: 400),
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              child: Text('pick a file'),
              onPressed: () async {
                pick();
              },
            ),
          ),
          if (pickedFile != null)
            SizedBox(
              height: 200,
              width: 100,
              child: Image.file(filetoDisplay!),
            ),
        ],
      ),
    );
  }
}
