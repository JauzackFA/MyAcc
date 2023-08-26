import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myacc/Widget/profile_widget.dart';

import '../Widget/text_box_widget.dart';
import 'login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final currentUser = FirebaseAuth.instance.currentUser;
  final userCollection = FirebaseFirestore.instance.collection("Users");

  Future<void> editField(String field) async {
    String newValue = "";
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey[1000],
        title: Text(
          "Edit " + field,
          style: const TextStyle(
            fontFamily: 'TruenoBold',
          ),
        ),
        content: TextField(
          autofocus: true,
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            hintText: "Enter new $field",
            hintStyle: const TextStyle(
              color: Colors.black45,
              fontFamily: 'MyFont',
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black,
                width: 2,
              ),
              borderRadius:
                  BorderRadius.circular(10), // Adjust the radius as needed
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black,
                width: 2,
              ),
              borderRadius:
                  BorderRadius.circular(10), // Adjust the radius as needed
            ),
          ),
          onChanged: (value) {
            newValue = value;
          },
        ),
        actions: [
          TextButton(
            child: const Text(
              'Cancel',
              style: TextStyle(
                color: Color.fromARGB(1000, 39, 222, 192),
              ),
            ),
            onPressed: () => Navigator.pop(context),
          ),
          TextButton(
            child: const Text(
              'Save',
              style: TextStyle(
                color: Color.fromARGB(1000, 39, 222, 192),
              ),
            ),
            onPressed: () => Navigator.of(context).pop(newValue),
          ),
        ],
      ),
    );

    if (newValue.trim().length > 0) {
      await userCollection.doc(currentUser!.email).update({
        field: newValue,
      });
    }
  }

  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
    // Navigasi kembali ke halaman login setelah berhasil logout
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) =>
              LoginPage()), // Ganti dengan halaman login yang sesuai
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: StreamBuilder<DocumentSnapshot>(
          stream: FirebaseFirestore.instance
              .collection("Users")
              .doc(currentUser!.email)
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (!snapshot.hasData) {
              return const Center(
                child: Text("No user data available."),
              );
            }

            final userData = snapshot.data!.data() as Map<String, dynamic>;

            return ListView(
              children: [
                const SizedBox(height: 60),
                const Icon(
                  Icons.person,
                  size: 80,
                ),
                const SizedBox(height: 10),
                Text(
                  FirebaseAuth.instance.currentUser?.email ?? 'Guest',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: 'TruenoBold',
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 40),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Description',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'MyFont',
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                MyTextBox(
                  text: userData['username'] ?? 'No username',
                  sectionName: 'username',
                  onPressed: () => editField('username'),
                ),
                const SizedBox(height: 10),
                MyTextBox(
                  text: userData['bio'] ?? 'No bio',
                  sectionName: 'bio',
                  onPressed: () => editField('bio'),
                ),
                const SizedBox(height: 220),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: ElevatedButton(
                    onPressed: _signOut,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(1000, 39, 222, 192),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      minimumSize: Size(150, 50),
                    ),
                    child: const Text(
                      'Sign out',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
