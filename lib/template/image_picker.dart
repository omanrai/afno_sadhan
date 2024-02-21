// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'sized_box.dart';

// class FilePickerPage extends StatelessWidget {
//   // var result;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         // constraints: BoxConstraints(maxWidth: 400),
//         alignment: Alignment.center,
//         padding: EdgeInsets.all(10),
//         child: ElevatedButton(
//           onPressed: () async {
            // final result = await FilePicker.platform.pickFiles(
            //   type: FileType.image,
            //   allowMultiple: true,
            // );

//             //open multiple file
            // if (result != null) {
            //   openFiles(result.files);

            //   //save file permanently in app add path provider
            //   // final newFile = await saveFilePermanently(file);
            //   // print('old path: ${}');
            //   // print('new path: ${}');

            // } else {
            //   return print(' User canceled the picker');
            // }
//           },
//           child: Text('pick a file'),
//         ),
//       ),
    
//     );
//   }

//   // void openFile(PlatformFile file) => OpenFile.open(file.path!);

//   void openFiles(List<PlatformFile> files) => GridView.builder(
//         padding: EdgeInsets.all(16),
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           mainAxisSpacing: 8,
//           crossAxisSpacing: 8,
//         ),
//         itemCount: files.length,
//         itemBuilder: (context, index) {
//           final file = files[index];

//           return buildFile(file);
//         },
//       );
// }

// Widget buildFile(PlatformFile file) {
//   final kb = file.size / 1024;
//   final mb = kb / 1024;
//   final fileSize =
//       mb >= 1 ? '${mb.toStringAsFixed(2)} MB' : '${kb.toStringAsFixed(2)} KB';
//   final extension = file.extension ?? 'none';
//   // final color = getColor(extension);
//   print('file name: ${file.name}');
//   print('file byte: ${file.bytes}');
//   print('file size: ${file.size}');
//   print('file extension: ${file.extension}');
//   print('file path: ${file.path}');

//   return Container(
//     padding: EdgeInsets.all(10),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Expanded(
//           child: Container(
//             alignment: Alignment.center,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: Colors.amber,
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Text(
//               '.${extension}',
//             ),
//           ),
//         ),
//         SizedBoxH10(),
//         Text(file.name),
//         SizedBoxH10(),
//         Text(fileSize),
//       ],
//     ),
//   );
// }



//one file

// FilePickerResult? result = await FilePicker.platform.pickFiles();

// if (result != null) {
//   File file = File(result.files.single.path);
// } else {
//   // User canceled the picker
// }

//multiple pick

// FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: true);

// if (result != null) {
//   List<File> files = result.paths.map((path) => File(path)).toList();
// } else {
//   // User canceled the picker
// }


//load
// FilePickerResult? result = await FilePicker.platform.pickFiles();

// if (result != null) {
//   PlatformFile file = result.files.first;

//   print(file.name);
//   print(file.bytes);
//   print(file.size);
//   print(file.extension);
//   print(file.path);
// } else {
//   // User canceled the picker
// }