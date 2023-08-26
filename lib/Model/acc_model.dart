// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class AccModel {
  String? docId;
  final String titleAcc;
  final String username;
  final String password;
  final String category;

  AccModel({
    this.docId,
    required this.titleAcc,
    required this.username,
    required this.password,
    required this.category,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'docId': docId,
      'titleAcc': titleAcc,
      'username': username,
      'password': password,
      'category': category,
    };
  }

  factory AccModel.fromMap(Map<String, dynamic> map) {
    return AccModel(
      docId: map['docId'] != null ? map['docId'] as String : null,
      titleAcc: map['titleAcc'] as String,
      username: map['username'] as String,
      password: map['password'] as String,
      category: map['category'] as String,
    );
  }

  // factory AccModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> doc) {
  //   return AccModel(
  //     titleAcc: doc('titleAcc'),
  //     username: doc('username'),
  //     password: doc('password'),
  //     category: doc('category'),
  //   );
  // }
  factory AccModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return AccModel(
      docId: doc.id,
      titleAcc: data['titleAcc'],
      username: data['username'],
      password: data['password'],
      category: data['category'],
    );
  }
}
