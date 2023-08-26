// import 'package:flutter/material.dart';
// import 'package:myacc/Page/login_page.dart';
// import 'package:myacc/Page/signup_page.dart';

// import 'home_page.dart';

// class LandingPage extends StatefulWidget {
//   const LandingPage({Key? key}) : super(key: key);

//   @override
//   State<LandingPage> createState() => _LandingPageState();
// }

// class _LandingPageState extends State<LandingPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Center(
//           child: SingleChildScrollView(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 const SizedBox(height: 180),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 40.0),
//                   child: Column(
//                     children: const [
//                       Text(
//                         'Save your Account Here',
//                         style: TextStyle(
//                             fontFamily: 'TruenoBold',
//                             color: Colors.black,
//                             fontSize: 28,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(height: 10), // Spacing between the texts
//                       Text(
//                         'With this application it will be easier for you to save as many accounts as possible',
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontFamily: 'MyFont',
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 60),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => LoginPage()),
//                       );
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       padding: EdgeInsets.all(17),
//                       margin: EdgeInsets.symmetric(horizontal: 14),
//                       decoration: BoxDecoration(
//                         color: Color.fromARGB(1000, 39, 222, 192),
//                         borderRadius: BorderRadius.circular(20),
//                         border: Border.all(
//                           color: Colors.black,
//                           width: 2.5,
//                         ),
//                       ),
//                       child: const Center(
//                         child: Text(
//                           "Login",
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => HomePage()),
//                       );
//                     },
//                     child: Container(
//                       padding: EdgeInsets.all(17),
//                       margin: EdgeInsets.symmetric(horizontal: 14),
//                       decoration: BoxDecoration(
//                         color: Color.fromARGB(1000, 39, 222, 192),
//                         borderRadius: BorderRadius.circular(20),
//                         border: Border.all(
//                           color: Colors.black,
//                           width: 2.5,
//                         ),
//                       ),
//                       child: const Center(
//                         child: Text(
//                           "Login as guest",
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 25),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text(
//                       'Dont have an account?',
//                       style: TextStyle(color: Colors.black),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const SignUp(),
//                           ),
//                         );
//                       },
//                       child: const Text(
//                         ' Sign Up',
//                         style: TextStyle(
//                             color: Color.fromARGB(1000, 39, 222, 192),
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // void main() {
// //   runApp(MaterialApp(
// //     home: LandingPage(),
// //   ));
// // }
