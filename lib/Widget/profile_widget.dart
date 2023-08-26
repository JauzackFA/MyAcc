import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import "package:flutter/material.dart";
import 'package:myacc/Modul/add_new.dart';
import "package:myacc/Page/add_page.dart";
import "package:myacc/Page/profile_page.dart";
import "package:google_nav_bar/google_nav_bar.dart";
import 'package:flutter/services.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    required this.name,
    required this.img,
  });

  final String name;
  final String img;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  ProfilePage()), // Replace with your profile page widget
        );
      },
      child: Row(
        children: [
          const SizedBox(width: 6),
          CircleAvatar(
            backgroundImage: AssetImage(img),
            backgroundColor: Colors.transparent,
            radius: 23,
          ),
          const SizedBox(width: 10),
          Column(
            // Use Column to align text elements vertically
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the left
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hello!, I\'m',
                style: TextStyle(
                  fontSize: 12,
                  // fontFamily: 'TruenoBold',
                  // fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                name,
                style: const TextStyle(
                  fontFamily: 'TruenoBold',
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(width: 165),
        ],
      ),
    );
  }
}
