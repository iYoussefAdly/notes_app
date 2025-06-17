import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_Bar.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [
        CustomAppBar(),   
        NoteItem()  
      ],),
    );
  }
}
