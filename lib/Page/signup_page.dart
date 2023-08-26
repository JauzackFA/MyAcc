import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myacc/Page/login_page.dart';
// import 'package:myacc/main.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // final _name = TextEditingController();
  final _username = TextEditingController();
  final _password = TextEditingController();
  final confirmPassword = TextEditingController();
  // final currentUser = FirebaseAuth.instance.currentUser!;

  void signUserUp() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    try {
      if (_password.text == confirmPassword.text) {
        UserCredential userCredential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _username.text,
          password: _password.text,
        );

        await FirebaseFirestore.instance
            .collection("Users")
            .doc(
              userCredential.user!.email,
            ) // Menggunakan email sebagai ID dokumen
            .set(
          {
            'username': _username.text,
            'bio': 'Empty bio..',
          },
        );
      } else {
        showErrorMessage("Password don't match");
      }
      // ignore: use_build_context_synchronously
      Navigator.of(context).pop();
    } on FirebaseAuthException catch (e) {
      Navigator.of(context).pop();
      showErrorMessage(e.code);
    } catch (e) {
      Navigator.of(context).pop();
      showErrorMessage("An error occurred: $e");
    }
  }

  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Color.fromARGB(1000, 39, 222, 192),
          // contentPadding: EdgeInsets.all(30),
          title: Center(
            child: Text(
              message,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(60),
                child: Column(
                  children: const [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'TruenoBold',
                        fontSize: 28,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Create your Account to enter the main page',
                      style: TextStyle(
                        fontFamily: 'MyFont',
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _username,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    // contentPadding: ,
                    hintText: 'Username',
                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                    contentPadding: const EdgeInsets.fromLTRB(20, 17, 40, 17) +
                        const EdgeInsets.symmetric(vertical: 1),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _password,
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    // contentPadding: ,
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                    contentPadding: const EdgeInsets.fromLTRB(20, 17, 40, 17) +
                        const EdgeInsets.symmetric(vertical: 1),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: confirmPassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    // contentPadding: ,
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                    contentPadding: const EdgeInsets.fromLTRB(20, 17, 40, 17) +
                        const EdgeInsets.symmetric(vertical: 1),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    signUserUp();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(17),
                    margin: EdgeInsets.symmetric(horizontal: 11),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(1000, 39, 222, 192),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'MyFont',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 2),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: const Text(
                      ' Sign in',
                      style: TextStyle(
                        color: Color.fromARGB(1000, 39, 222, 192),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'TruenoBold',
                      ),
                    ),
                  ),
                ],
              ),
              // const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
