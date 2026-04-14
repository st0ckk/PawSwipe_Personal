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
import '/auth/firebase_auth/auth_util.dart';

Future<bool> checkForMatch(
  DocumentReference swipedPetRef,
) async {
  final swipedPetDoc = await swipedPetRef.get();
  final swipedPetData = swipedPetDoc.data() as Map<String, dynamic>?;
  if (swipedPetData == null) return false;

  final otherUserRef = swipedPetData['owner_ref'] as DocumentReference?;
  if (otherUserRef == null) return false;

  final myPawfiles = await FirebaseFirestore.instance
      .collection('pawfiles')
      .where('owner_ref', isEqualTo: currentUserReference)
      .get();

  if (myPawfiles.docs.isEmpty) return false;

  for (final doc in myPawfiles.docs) {
    final match = await FirebaseFirestore.instance
        .collection('swipes')
        .where('user_ref', isEqualTo: otherUserRef)
        .where('pet_ref', isEqualTo: doc.reference)
        .where('action', isEqualTo: true)
        .get();

    if (match.docs.isNotEmpty) return true;
  }

  return false;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
