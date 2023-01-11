import 'package:flutter/material.dart';
import 'package:note_application/views/widgets/custom_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key, required this.title, required this.icon})
      : super(key: key);

  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 26),
        ),
        Spacer(),
        CustomIcon(icon: icon),
      ],
    );
  }
}
