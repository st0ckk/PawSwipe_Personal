import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

double calculateDistance(
  double lat1,
  double lng1,
  double lat2,
  double lng2,
) {
  const R = 6371.0;
  final dLat = (lat2 - lat1) * math.pi / 180;
  final dLng = (lng2 - lng1) * math.pi / 180;
  final a = math.sin(dLat / 2) * math.sin(dLat / 2) +
      math.cos(lat1 * math.pi / 180) *
          math.cos(lat2 * math.pi / 180) *
          math.sin(dLng / 2) *
          math.sin(dLng / 2);
  final c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
  return R * c;
}

double getCurrentLat(LatLng location) {
  return location.latitude;
}

double getCurrentLng(LatLng location) {
  return location.latitude;
}

String formatDistance(double distance) {
  if (distance <= 0) return 'Distancia no disponible';
  return '${distance.toStringAsFixed(1)} km';
}

List<PlacesRecord> filterPlaces(
  List<PlacesRecord> places,
  String query,
) {
  if (query.isEmpty) return places;

  return places
      .where((place) => place.name.toLowerCase().contains(query.toLowerCase()))
      .toList();
}

List<DocumentReference> getChatContacts(List<ChatsRecord> chatsList) {
  final currentUser = currentUserReference;
  if (currentUser == null) return [];

  final Set<String> seenPaths = {};
  final List<DocumentReference> contacts = [];

  for (final chat in chatsList) {
    for (final userRef in chat.users) {
      if (userRef.path != currentUser.path &&
          !seenPaths.contains(userRef.path)) {
        seenPaths.add(userRef.path);
        contacts.add(userRef);
      }
    }
  }

  return contacts;
}

bool? isFavoritePlace(
  List<DocumentReference>? favoritesList,
  DocumentReference? placeRef,
) {
  if (favoritesList == null) return false;
  return favoritesList.contains(placeRef);
}

int? stringToInt(String? value) {
  if (value == null) return 0;
  return int.tryParse(value) ?? 0;
}

LatLng? createLatLng(
  int? lat,
  int? lng,
) {
  if (lat == null || lng == null) return null;
  return LatLng(lat.toDouble(), lng.toDouble());
}
