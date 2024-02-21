// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';


// class FilesPage extends StatelessWidget {
//   FilesPage({
//     Key? key,
//     required this.files,
//     required this.onOpenedFile,
//   }) : super(key: key);

//   final List<PlatformFile> files;
//   final ValueChanged<PlatformFile> onOpenedFile;

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       padding: EdgeInsets.all(16),
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         mainAxisSpacing: 8,
//         crossAxisSpacing: 8,
//       ),
//       itemCount: files.length,
//       itemBuilder: (context, index) {
//         final file = files[index];

//         return buildFile(file);
//       },
//     );
//   }

//   Widget buildFile(PlatformFile file) {
//     final kb = file.size / 1024;
//     final mb = kb / 1024;
//     final fileSize =
//         mb >= 1 ? '${mb.toStringAsFixed(2)} MB' : '${kb.toStringAsFixed(2)} KB';
//     final extension = file.extension ?? 'none';
//     // final color = getColor(extension);
//     print('file name: ${file.name}');
//     print('file byte: ${file.bytes}');
//     print('file size: ${file.size}');
//     print('file extension: ${file.extension}');
//     print('file path: ${file.path}');

//     return InkWell(
//       onTap: () => OpenFile.open(file.path!),
//       // onTap: () => widget.onOpenedFile(file),
//       child: Container(
//         padding: EdgeInsets.all(10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Expanded(
//               child: Container(
//                 alignment: Alignment.center,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: Colors.amber,
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Text(
//                   '.${extension}',
//                 ),
//               ),
//             ),
//             SizedBoxH10(),
//             Text(file.name),
//             SizedBoxH10(),
//             Text(fileSize),
//           ],
//         ),
//       ),
//     );
//   }

  
// }
