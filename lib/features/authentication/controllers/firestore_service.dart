// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class FirestoreService extends GetxController {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   final TextEditingController _searchController = TextEditingController();
//   bool _isLoading = false;

//   // Future<List<Map<String, dynamic>>> searchItems(String query) async {
//   //   QuerySnapshot snapshot = await _firestore
//   //       .collection('Products') // Your collection name
//   //       .where('Title', isGreaterThanOrEqualTo: query)
//   //       .where('Title', isLessThanOrEqualTo: query + '\uf8ff')
//   //       .get();

//   //   return snapshot.docs
//   //       .map((doc) => doc.data() as Map<String, dynamic>)
//   //       .toList();
//   // }

//   void _search() async {
//     setState(() {
//       _isLoading = true;
//     });

//     QuerySnapshot snapshot = await _firestore
//         .collection('Products')
//         .where('Title', isGreaterThanOrEqualTo: _searchController.text)
//         .where('Title', isLessThanOrEqualTo: '${_searchController.text}\uf8ff')
//         .get();

//     _searchResults = snapshot.docs
//         .map((doc) => ProductModel.fromQuerySnapshot(doc))
//         .toList();

//     setState(() {
//       _isLoading = false;
//     });
//   }
// }
