// import 'package:flutter/material.dart';
// import '../models/note_model.dart';

// class NoteEditView extends StatelessWidget {
//   const NoteEditView({
//     Key? key,
//     required this.note,
//     required this.onNoteSaved,
//   }) : super(key: key);

//   final Note note;
//   final void Function(Note editedNote) onNoteSaved;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Edit Note"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextFormField(
//               initialValue: note.title,
//               decoration: const InputDecoration(
//                 labelText: "Title",
//               ),
//               onChanged: (value) {
//                 final editedNote = note.copyWith(title: value, body: value);
//                 onNoteSaved(editedNote);
//               },
//             ),
//             const SizedBox(height: 10),
//             TextFormField(
//               initialValue: note.body,
//               decoration: const InputDecoration(
//                 labelText: "Body",
//               ),
//               maxLines: null,
//               onChanged: (value) {
//                 final editedNote = note.copyWith(body: value, title: value);
//                 onNoteSaved(editedNote);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
