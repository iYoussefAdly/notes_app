import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          CustomAppBar(titleOfAppBar: 'Edit Notes',icon: Icons.check,),
          SizedBox(
            height: 16,
          ),
          CustomFormTextField(hint: 'Title'),
          SizedBox(
            height: 20,
          ),
          CustomFormTextField(hint: 'Content',maxLines: 5,)
        ],
      ),
    );
  }
}