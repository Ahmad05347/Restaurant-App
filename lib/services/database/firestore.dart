import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference order = FirebaseFirestore.instance.collection(
    "orders",
  );

  Future<void> saveReceiptToDatabase(String receipt) async {
    await order.add({
      "date": DateTime.now(),
      "order": receipt,
    });
  }
}
