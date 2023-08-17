import "package:flutter/material.dart";
import "package:myacc/Page/add_page.dart";
import "package:myacc/Page/profile_page.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List<Widget> buildPages = [
    ThisHomePage(),
    AddNew(),
    ProfilePage(),
  ];

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: buildPages[
          currentIndex], // Use the current page based on the currentIndex
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        selectedItemColor: Color.fromARGB(1000, 147, 222, 255),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}

class ThisHomePage extends StatelessWidget {
  const ThisHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 60),
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
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(18),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Edit',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'MyFont',
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(width: 300),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Filter',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'MyFont',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(28),
            margin: const EdgeInsets.symmetric(horizontal: 14),
            decoration: BoxDecoration(
              // color: Color.fromARGB(1000, 39, 222, 192),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black,
                width: 2.5,
              ),
            ),
            width: 390,
            child: const Text(
              "Valorant",
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'MyFont',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(23),
            margin: EdgeInsets.symmetric(horizontal: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black,
                width: 2.5,
              ),
            ),
            width: 390,
            child: Row(
              children: const [
                // Logo (You can replace this with an Image widget)
                Icon(
                  Icons.star,
                  size: 30,
                  color: Colors.blue,
                ),
                SizedBox(width: 10), // Spacing between logo and text
                // Text
                Text(
                  "Valorant",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'MyFont',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
