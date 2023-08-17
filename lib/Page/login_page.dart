import 'package:flutter/material.dart';
import 'package:myacc/Page/home_page.dart';

import '../components/squar_tile.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(height: 10),
                //==
                Padding(
                  padding: const EdgeInsets.all(60),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'We Meet Again!',
                        style: TextStyle(
                          fontFamily: 'TruenoBold',
                          // fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 28,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Please enter your username and password to enter the main page',
                        style: TextStyle(
                          fontFamily: 'MyFont',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
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
                  child: TextField(
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(17),
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
                          "Login",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 100),

                // Row(
                //   children: const [
                //     Expanded(
                //       child: Divider(
                //         thickness: 1,
                //         color: Colors.black,
                //         indent: 70,
                //         endIndent: 1,
                //       ),
                //     ),
                //     Padding(
                //       padding: EdgeInsets.symmetric(horizontal: 10.0),
                //       child: Text(
                //         'Or Continue with',
                //         style: TextStyle(
                //           color: Colors.black,
                //           fontFamily: 'MyFont',
                //           fontWeight: FontWeight.bold,
                //           fontSize: 13,
                //         ),
                //       ),
                //     ),
                //     Expanded(
                //       child: Divider(
                //         thickness: 1,
                //         color: Colors.black,
                //         indent: 1,
                //         endIndent: 70,
                //       ),
                //     )
                //   ],
                // ),

                // const SizedBox(height: 45),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: const [
                //     SquareTile(imagePath: 'lib/assets/google.png'),
                //     SquareTile(imagePath: 'lib/assets/microsoft.png'),
                //   ],
                // ),

                // const SizedBox(height: 1000),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
