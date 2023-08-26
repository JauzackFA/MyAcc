import 'package:flutter/material.dart';

class EditableCardAccWidget extends StatelessWidget {
  const EditableCardAccWidget({
    Key? key,
    required this.onTap, // Callback yang akan dipanggil saat card ditekan
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, // Panggil callback saat card ditekan
      child: Container(
        height: 100,
        margin: const EdgeInsets.symmetric(horizontal: 22),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.black,
            width: 2.5,
          ),
        ),
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                ),
              ),
              width: 20,
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Column(
                  children: const [
                    ListTile(
                      title: Text(
                        'Google',
                        style: TextStyle(
                          fontFamily: 'TruenoBold',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      subtitle: Text(
                        'jauzack001@gmail.com',
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
