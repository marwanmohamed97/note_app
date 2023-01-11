import 'package:flutter/material.dart';
import 'package:note_application/views/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          CustomAppbar(
            icon: Icons.check,
            title: 'Edit Note',
          ),
        ],
      ),
    );
  }
}
