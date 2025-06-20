import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final data = const [];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return NoteItem();
          },
        ),
      ),
    );
  }
}
