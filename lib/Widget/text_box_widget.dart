import 'package:flutter/material.dart';

class MyTextBox extends StatelessWidget {
  const MyTextBox({
    super.key,
    required this.text,
    required this.sectionName,
    required this.onPressed,
  });

  final String text;
  final String sectionName;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.only(
        left: 15,
        bottom: 15,
      ),
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                sectionName,
                style: TextStyle(
                  fontFamily: 'MyFont',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade500,
                ),
              ),
              IconButton(
                  onPressed: onPressed,
                  icon: const Icon(
                    Icons.settings,
                    color: Color.fromARGB(1000, 39, 222, 192),
                  ))
            ],
          ),
          Text(
            text,
            style: const TextStyle(
              fontFamily: "MyFont",
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
