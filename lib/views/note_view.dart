import 'package:flutter/material.dart';
import '../models/note_model.dart';
// import 'note_edit_view.dart';

class NoteView extends StatelessWidget {
  const NoteView({
    Key? key,
    required this.note,
    required this.index,
    required this.onNoteDeleted,
    // required this.onNoteEdited,
  }) : super(key: key);

  final Note note;
  final int index;
  final Function(int) onNoteDeleted;
  // final Function(int, Note) onNoteEdited;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Notes"),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Are you sure?'),
                    content: Text('Note ${note.title} will be deleted!'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          onNoteDeleted(index);
                          Navigator.of(context).pop();
                        },
                        child: const Text("DELETE"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("CANCEL"),
                      ),
                    ],
                  );
                },
              );
            },
            icon: const Icon(Icons.delete),
          ),
          // IconButton(
          //   onPressed: () {
          //     Navigator.of(context).push(
          //       MaterialPageRoute(
          //         builder: (context) => NoteEditView(
          //           note: note,
          //           onNoteSaved: (editedNote) {
          //             onNoteEdited(index, editedNote);
          //             Navigator.of(context).pop();
          //           },
          //         ),
          //       ),
          //     );
          //   },
          //   icon: const Icon(Icons.edit),
          // ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              note.title,
              style: const TextStyle(
                fontSize: 26,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              note.body,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
//   NoteEditView(
//       {required Note note,
//       required Null Function(dynamic editedNote) onNoteSaved}) async {}
}
