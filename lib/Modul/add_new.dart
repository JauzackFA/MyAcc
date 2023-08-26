import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myacc/Model/acc_model.dart';
import 'package:myacc/Modul/radio.provider.dart';
import 'package:myacc/Provider/service_provider.dart';
import 'package:myacc/Widget/textfield_widget.dart';

import '../Widget/radio_widget.dart';

class AddNewAcc extends ConsumerWidget {
  AddNewAcc({
    super.key,
  });

  final titleController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  final CollectionReference _items =
      FirebaseFirestore.instance.collection('items');

  // @override
  // void dispose() {
  //   titleController.dispose();
  //   usernameController.dispose();
  //   passwordController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(30),
        height: MediaQuery.of(context).size.height * 0.58,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Add an Account',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'TruenoBold',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            CustomTextField(
              maxLine: 1,
              hintText: 'Input Title',
              txtController: titleController,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              maxLine: 1,
              hintText: 'Input Username',
              txtController: usernameController,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              maxLine: 1,
              hintText: 'Input Password',
              txtController: passwordController,
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 15),
            const Text(
              'Category',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'TruenoBold',
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Expanded(
                  child: RadioWidget(
                    categColor: Colors.red,
                    titleRadio: 'Google',
                    valueInput: 1,
                    onChangeValue: () =>
                        ref.read(radioProvider.notifier).update(
                              (state) => 1,
                            ),
                  ),
                ),
                Expanded(
                  child: RadioWidget(
                    categColor: Colors.blue,
                    titleRadio: 'Facebook',
                    valueInput: 2,
                    onChangeValue: () =>
                        ref.read(radioProvider.notifier).update(
                              (state) => 2,
                            ),
                  ),
                ),
                Expanded(
                  child: RadioWidget(
                    categColor: Colors.grey,
                    titleRadio: 'Others',
                    valueInput: 3,
                    onChangeValue: () =>
                        ref.read(radioProvider.notifier).update(
                              (state) => 3,
                            ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(1000, 39, 222, 192),
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 163,
                  ),
                ),
                onPressed: () {
                  final getRadioValue = ref.read(radioProvider);
                  String category = '';

                  switch (getRadioValue) {
                    case 1:
                      category = 'Google';
                      break;

                    case 2:
                      category = 'Facebook';
                      break;

                    case 3:
                      category = 'Others';
                      break;
                  }

                  ref.read(serviceProvider).AddNewAcc(AccModel(
                        titleAcc: titleController.text,
                        username: usernameController.text,
                        password: passwordController.text,
                        category: category,
                      ));

                  titleController.clear();
                  usernameController.clear();
                  passwordController.clear();
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
