import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_Icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.titleOfAppBar,
    required this.icon, 
     this.onPressed,
  });
  final String titleOfAppBar;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Row(
        children: [
          Text(titleOfAppBar, style: TextStyle(fontSize: 28)),
          Spacer(),
          CustomIcon(icon: icon,onPressed: onPressed,),
        ],
      ),
    );
  }
}
