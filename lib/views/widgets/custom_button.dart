import 'package:flutter/material.dart';
import 'package:note_application/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.onTap, required this.isloading})
      : super(key: key);

  final void Function()? onTap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isloading
              ? const SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : const Text(
                  "Add",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
        ),
      ),
    );
  }
}
