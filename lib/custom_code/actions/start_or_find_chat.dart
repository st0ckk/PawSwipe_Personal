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

Future<DocumentReference> startOrFindChat(
  DocumentReference otherUserRef,
) async {
  final currentUser = currentUserReference!;

  // Check for existing chat
  final query = await FirebaseFirestore.instance
      .collection('chats')
      .where('users', arrayContains: currentUser)
      .get();

  for (final doc in query.docs) {
    final users = List<DocumentReference>.from(
      (doc.data()['users'] as List).map((e) => e as DocumentReference),
    );
    if (users.contains(otherUserRef)) {
      return doc.reference;
    }
  }

  // No existing chat — create one
  final newChat = await FirebaseFirestore.instance.collection('chats').add({
    'users': [currentUser, otherUserRef],
    'created_users': currentUser,
    'created_datetime': FieldValue.serverTimestamp(),
    'last_message_datetime': FieldValue.serverTimestamp(),
    'last_message': '',
  });

  return newChat;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
