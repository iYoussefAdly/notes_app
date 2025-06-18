import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_Bar.dart';

import 'package:notes_app/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(children: [
          CustomAppBar(titleOfAppBar: 'Notes',icon: Icons.search,),
         NotesListView(),
        ]),
      
    );
  }
}


