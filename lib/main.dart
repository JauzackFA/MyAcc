import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myacc/Page/auth_page.dart';
import 'package:myacc/firebase_options.dart';
import 'Page/landing_page.dart';

// final titleControllerProvider = Provider((ref) => TextEditingController());
// final usernameControllerProvider = Provider((ref) => TextEditingController());
// final passwordControllerProvider = Provider((ref) => TextEditingController());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AuthPage(),
      ),
    );
  }
}
