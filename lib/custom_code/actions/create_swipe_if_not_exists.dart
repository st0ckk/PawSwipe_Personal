// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future createSwipeIfNotExists(
  DocumentReference userRef,
  DocumentReference petRef,
  bool action,
) async {
  final existing = await FirebaseFirestore.instance
      .collection('swipes')
      .where('user_ref', isEqualTo: userRef)
      .where('pet_ref', isEqualTo: petRef)
      .get();

  if (existing.docs.isEmpty) {
    await FirebaseFirestore.instance.collection('swipes').add({
      'user_ref': userRef,
      'pet_ref': petRef,
      'action': action,
    });
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
