import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myacc/Model/acc_model.dart';

class AccService {
  final accCollection = FirebaseFirestore.instance.collection('accApp');

  void AddNewAcc(AccModel model) {
    accCollection.add(model.toMap());
  }
}
