import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_Icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50 ),
      child: Row(
        spacing: 225,
        children: [
          Text('Notes',style: TextStyle(fontSize: 28),),
        CustomSearchIcon()
      ],),
    );
  }
}
