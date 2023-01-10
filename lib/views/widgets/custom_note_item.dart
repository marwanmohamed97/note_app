import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, left: 16, right: 6, bottom: 6),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter Tips',
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Build your carrer with Marwan Mohammed",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(.5),
                ),
              ),
            ),
            trailing: const Icon(
              FontAwesomeIcons.trash,
              color: Colors.black,
              size: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, bottom: 16),
            child: Text(
              "May 21,2022",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withOpacity(.5),
              ),
            ),
          )
        ],
      ),
    );
  }
}
