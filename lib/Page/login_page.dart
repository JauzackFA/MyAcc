import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myacc/Page/home_page.dart';
import 'package:myacc/Page/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final _formKey = GlobalKey<FormState>();
  // bool isLoading = false;
  // final _username = TextEditingController();
  // final _password = TextEditingController();

  // void signUserIn() async {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //     email: _username.text,
  //     password: _password.text,
  //   );
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //     email: _username.text.trim(),
  //     password: _password.text.trim(),
  //   );

  //   try {
  //     await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: _username.text,
  //       password: _password.text,
  //     );
  //     // ignore: use_build_context_synchronously
  //     Navigator.of(context).pop();
  //   } on FirebaseAuthException catch (e) {
  //     Navigator.of(context).pop();

  //     if (e.code == 'user-not-found') {
  //       wrongUsernameMessage();
  //       // print('No user found for that username');
  //     } else if (e.code == 'wrong-password') {
  //       wrongPasswordMessage();
  //       // print('Wrong password');
  //     }
  //   }
  // }

  // void wrongUsernameMessage() {
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return const AlertDialog(
  //         title: Text('Incorrect Username'),
  //       );
  //     },
  //   );
  // }

  // void wrongPasswordMessage() {
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return const AlertDialog(
  //         title: Text('Incorrect Password'),
  //       );
  //     },
  //   );
  // }
  final _username = TextEditingController();
  final _password = TextEditingController();
  bool isLoading = false;

  void signUserIn() async {
    setState(() {
      isLoading = true;
    });
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _username.text.trim(),
        password: _password.text.trim(),
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        wrongUsernameMessage();
      } else if (e.code == 'wrong-password') {
        wrongPasswordMessage();
      }
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  void wrongUsernameMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Incorrect Username'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void wrongPasswordMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Incorrect Password'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _username.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              // key: _formKey,
              child: OverflowBar(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 150),
                      //==
                      Padding(
                        padding: const EdgeInsets.all(60),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Save your Account Here',
                              style: TextStyle(
                                  fontFamily: 'TruenoBold',
                                  color: Colors.black,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10), // Spacing between the texts
                            Text(
                              'With this application it will be easier for you to save as many accounts as possible',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'MyFont',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          controller: _username,
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Username is empty!';
                            }
                            return null;
                          },
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
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),

                            // contentPadding: ,
                            hintText: 'Username',
                            hintStyle:
                                TextStyle(color: Colors.black.withOpacity(0.5)),
                            contentPadding:
                                const EdgeInsets.fromLTRB(20, 17, 40, 17) +
                                    const EdgeInsets.symmetric(vertical: 1),
                          ),
                        ),
                      ),

                      const SizedBox(height: 15),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          controller: _password,
                          obscureText: true,
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Password is empty!';
                            }
                            return null;
                          },
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
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            // contentPadding: ,
                            hintText: 'Password',
                            hintStyle:
                                TextStyle(color: Colors.black.withOpacity(0.5)),
                            contentPadding:
                                const EdgeInsets.fromLTRB(20, 17, 40, 17) +
                                    const EdgeInsets.symmetric(vertical: 2),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              'Recovery Password',
                              style: TextStyle(
                                  color: Color.fromARGB(1000, 39, 222, 192),
                                  fontSize: 14,
                                  fontFamily: 'TruenoBold'),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 35),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: signUserIn,
                          child: Container(
                            padding: const EdgeInsets.all(17),
                            margin: const EdgeInsets.symmetric(horizontal: 14),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(1000, 39, 222, 192),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.black,
                                width: 2.5,
                              ),
                            ),
                            child: const Center(
                                child: Text(
                              "Sign in",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(17),
                            margin: const EdgeInsets.symmetric(horizontal: 14),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(1000, 39, 222, 192),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.black,
                                width: 2.5,
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                "Login as guest",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Dont have an account?',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'MyFont',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUp(),
                                ),
                              );
                            },
                            child: const Text(
                              ' Sign Up',
                              style: TextStyle(
                                color: Color.fromARGB(1000, 39, 222, 192),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'TruenoBold',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
