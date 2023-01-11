import 'package:flutter/material.dart';
import 'package:note_application/views/widgets/custom_app_bar.dart';
import 'package:note_application/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppbar(
            icon: Icons.check,
            title: 'Edit Note',
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(hint: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Content',
            maxlines: 5,
          )
        ],
      ),
    );
  }
}
