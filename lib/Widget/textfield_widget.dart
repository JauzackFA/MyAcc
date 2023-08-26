import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.maxLine,
    required this.txtController,
  }) : super(key: key);

  final String hintText;
  final int maxLine;
  final TextEditingController txtController;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: 0),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        controller: txtController,
        // focusNode: focusNode,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.black,
              width: 2.5,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.black,
              width: 2.5,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontFamily: 'MyFont',
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        maxLines: maxLine,
      ),
    );
  }
}
