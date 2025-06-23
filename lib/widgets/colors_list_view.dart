import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
          radius: 38,
          backgroundColor: Colors.white,
          child: CircleAvatar(radius: 34, backgroundColor:color,
        ))
        : CircleAvatar(radius: 38, backgroundColor:color);
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

int currnetIndex = 0;
List<Color> colors = [
  Color(0xffF7F7FF),
  Color(0xffC49991),
  Color(0xff279AF1),
  Color(0xff60656F),
  Color(0xff513C2C),
];

class _ColorsListViewState extends State<ColorsListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: GestureDetector(
              onTap: () {
                currnetIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color:colors[index] ,
                isActive: currnetIndex == index),
            ),
          );
        },
      ),
    );
  }
}
