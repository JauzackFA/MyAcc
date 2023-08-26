// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Modul/radio.provider.dart';

class RadioWidget extends ConsumerWidget {
  const RadioWidget({
    super.key,
    required this.categColor,
    required this.titleRadio,
    required this.valueInput,
    required this.onChangeValue,
  });

  final String titleRadio;
  final Color categColor;
  final int valueInput;
  final VoidCallback onChangeValue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final radio = ref.watch(radioProvider);

    return Material(
      color: Colors.white,
      child: Theme(
        data: ThemeData(unselectedWidgetColor: categColor),
        child: RadioListTile(
          activeColor: categColor,
          contentPadding: EdgeInsets.zero,
          title: Transform.translate(
            offset: const Offset(-20, 0),
            child: Text(
              titleRadio,
              style: TextStyle(
                  fontFamily: 'MyFont',
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
          ),
          value: valueInput,
          groupValue: radio,
          onChanged: (value) => onChangeValue(),
        ),
      ),
    );
  }
}
