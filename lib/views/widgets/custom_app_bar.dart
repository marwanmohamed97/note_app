import 'package:flutter/material.dart';
import 'package:note_application/views/widgets/custom_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          "Notes",
          style: TextStyle(fontSize: 26),
        ),
        Spacer(),
        CustomIcon(),
      ],
    );
  }
}
