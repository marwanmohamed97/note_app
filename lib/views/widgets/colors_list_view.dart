import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key, required this.isActive, required this.color})
      : super(key: key);

  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 34,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({Key? key}) : super(key: key);

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

  List<Color> colors = const [
    Color(0xffF9DBBD),
    Color(0xffFCA17D),
    Color(0xffDA627D),
    Color(0xff9A348E),
    Color(0xff0D0628),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                  color: colors[index], isActive: currentIndex == index),
            ),
          );
        },
      ),
    );
  }
}
