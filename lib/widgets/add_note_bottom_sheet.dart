import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_form.dart';
class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SingleChildScrollView(child: AddNoteForm()),
    );
  }
}
