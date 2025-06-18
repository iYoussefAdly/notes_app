import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 38),
              child: CustomTextField(
                hint: 'Title',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextField(hint: 'Content',maxLines: 6,
            ),
            SizedBox(
              height: 70,
            ),
            CustomButton(
              onTap: () {              
              },
            )
          ],
        ),
      ),
    );
  }
}
