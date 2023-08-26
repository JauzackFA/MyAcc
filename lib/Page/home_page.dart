import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myacc/Modul/add_new.dart';
import 'package:myacc/Widget/profile_widget.dart';

import '../Modul/card_acc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // final user = FirebaseAuth.instance.currentUser;
    final CollectionReference _items =
        FirebaseFirestore.instance.collection('items');

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Row(
          children: [
            const ProfileWidget(
              name: 'User',
              img: 'lib/assets/yujin.jpg',
            ),
            // if (user != null) // Display the user info if user is logged in
            //   ProfileWidget(
            //     name: user.displayName ?? 'Guest',
            //     img: user.photoURL ?? 'lib/assets/default_profile_image.jpg',
            //   ),

            SizedBox(width: 45),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(1000, 39, 222, 192),
                foregroundColor: Colors.black,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () => showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                context: context,
                builder: (context) => AddNewAcc(),
              ),
              child: const Text('+ Add'),
            )
          ],
        ),
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
      ),
      body: const ThisHomePage(),
      // body: StreamBuilder(
      //   stream: _items.snapshots(),
      //   builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
      //     (streamSnapshot.hasData){
      //       return ListView.builder(itemCount: streamSnapshot.data!.docs.length,
      //       itemBuilder: (context, index) {
      //         final DocumentSnapshot documentSnapshot = streamSnapshot.data!.docs[index];
      //         return Card();
      //       },);
      //     };
      //   },
      // ),
      // body: Items(items: _items),
    );
  }
}

// class Items extends StatelessWidget {
//   const Items({
//     super.key,
//     required CollectionReference<Object?> items,
//   }) : _items = items;

//   final CollectionReference<Object?> _items;

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder(
//       stream: _items.snapshots(),
//       builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
//         if (streamSnapshot.hasData) {
//           return ListView.builder(
//             itemCount: streamSnapshot.data!.docs.length,
//             itemBuilder: (context, index) {
//               final DocumentSnapshot documentSnapshot =
//                   streamSnapshot.data!.docs[index];
//               return Card(
//                 color: Colors.red,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20),
//                   side: const BorderSide(color: Colors.black),
//                 ),
//                 margin: const EdgeInsets.all(20),
//               );
//             },
//           );
//         } else {
//           // Return a loading indicator or placeholder when data is loading
//           return CircularProgressIndicator(); // Replace with appropriate widget
//         }
//       },
//     );
//   }
// }

class ThisHomePage extends StatelessWidget {
  const ThisHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(1000, 39, 222, 192),
                  size: 25,
                ),
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontFamily: 'MyFont',
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 2.5,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 2.5,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
              ),
            ),
          ),
          const SizedBox(height: 15),

          const SizedBox(height: 15),
          // Hapus widget ListView.builder di sini
          ListView.builder(
            itemCount: 1,
            shrinkWrap: true,
            itemBuilder: (context, index) => CardAccWidget(),
          ),
        ],
      ),
    );
  }
}
