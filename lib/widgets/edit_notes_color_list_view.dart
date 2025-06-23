
import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_list_view.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

late int currentIndex;

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.noteModel.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: GestureDetector(
              onTap: () {
                currnetIndex = index;
                widget.noteModel.color = kColors[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: kColors[index],
                isActive: currnetIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
