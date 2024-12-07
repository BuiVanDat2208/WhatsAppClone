# whatsapp_clone

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

// Add a new document to a collection
Future<void> addData() async {
  try {
    await firestore.collection("users").add({
      "name": "John Doe",
      "email": "johndoe@example.com",
      "age": 30,
    });
    print("Data added successfully!");
  } catch (e) {
    print("Error: $e");
  }
}

// Fetch data from a collection
Future<void> fetchData() async {
  try {
    QuerySnapshot snapshot = await firestore.collection("users").get();
    snapshot.docs.forEach((doc) {
      print("User: ${doc.data()}");
    });
  } catch (e) {
    print("Error: $e");
  }
}
