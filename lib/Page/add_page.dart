import 'package:flutter/material.dart';

class AddNew extends StatefulWidget {
  const AddNew({super.key});

  @override
  State<AddNew> createState() => _AddNewState();
}

class _AddNewState extends State<AddNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(height: 10),
            Text(
              'Add an Account',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'MyFont',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
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
                      hintText: 'Type',
                      hintStyle:
                          TextStyle(color: Colors.black.withOpacity(0.5)),
                      contentPadding:
                          const EdgeInsets.fromLTRB(20, 17, 40, 17) +
                              const EdgeInsets.symmetric(vertical: 2),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
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
                      hintText: 'Title',
                      hintStyle:
                          TextStyle(color: Colors.black.withOpacity(0.5)),
                      contentPadding:
                          const EdgeInsets.fromLTRB(20, 17, 40, 17) +
                              const EdgeInsets.symmetric(vertical: 2),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
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
                              const EdgeInsets.symmetric(vertical: 2),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
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
                const SizedBox(height: 320),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    // onTap: () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => LoginPage()),
                    //   );
                    // },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(17),
                      margin: EdgeInsets.symmetric(horizontal: 14),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(1000, 39, 222, 192),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.black,
                          width: 2.5,
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Add",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                // const SizedBox(height: 300),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
