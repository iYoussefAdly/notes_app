import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/view/edit_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return EditView();
              },
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Color(noteModel.color),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 24, left: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(
                    noteModel.title,
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 24),
                    child: Text(
                      noteModel.subtitle,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.34),
                        fontSize: 15,
                      ),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      noteModel.delete();
                    },
                    icon: Icon(Icons.delete, color: Colors.black, size: 32),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 19),
                  child: Text(
                    noteModel.date,
                    style: TextStyle(color: Colors.black.withOpacity(0.7)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
