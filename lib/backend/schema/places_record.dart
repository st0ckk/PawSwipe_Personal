import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlacesRecord extends FirestoreRecord {
  PlacesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "latitude" field.
  int? _latitude;
  int get latitude => _latitude ?? 0;
  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  int? _longitude;
  int get longitude => _longitude ?? 0;
  bool hasLongitude() => _longitude != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "is_fenced" field.
  bool? _isFenced;
  bool get isFenced => _isFenced ?? false;
  bool hasIsFenced() => _isFenced != null;

  // "opening_hours" field.
  String? _openingHours;
  String get openingHours => _openingHours ?? '';
  bool hasOpeningHours() => _openingHours != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "special_events" field.
  String? _specialEvents;
  String get specialEvents => _specialEvents ?? '';
  bool hasSpecialEvents() => _specialEvents != null;

  // "events_schedule" field.
  String? _eventsSchedule;
  String get eventsSchedule => _eventsSchedule ?? '';
  bool hasEventsSchedule() => _eventsSchedule != null;

  // "photo_url_2" field.
  String? _photoUrl2;
  String get photoUrl2 => _photoUrl2 ?? '';
  bool hasPhotoUrl2() => _photoUrl2 != null;

  // "photo_url_3" field.
  String? _photoUrl3;
  String get photoUrl3 => _photoUrl3 ?? '';
  bool hasPhotoUrl3() => _photoUrl3 != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _address = snapshotData['address'] as String?;
    _latitude = castToType<int>(snapshotData['latitude']);
    _longitude = castToType<int>(snapshotData['longitude']);
    _category = snapshotData['category'] as String?;
    _isFenced = snapshotData['is_fenced'] as bool?;
    _openingHours = snapshotData['opening_hours'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _description = snapshotData['description'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _specialEvents = snapshotData['special_events'] as String?;
    _eventsSchedule = snapshotData['events_schedule'] as String?;
    _photoUrl2 = snapshotData['photo_url_2'] as String?;
    _photoUrl3 = snapshotData['photo_url_3'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('places');

  static Stream<PlacesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlacesRecord.fromSnapshot(s));

  static Future<PlacesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlacesRecord.fromSnapshot(s));

  static PlacesRecord fromSnapshot(DocumentSnapshot snapshot) => PlacesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlacesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlacesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlacesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlacesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlacesRecordData({
  String? name,
  String? address,
  int? latitude,
  int? longitude,
  String? category,
  bool? isFenced,
  String? openingHours,
  String? photoUrl,
  String? description,
  LatLng? location,
  String? specialEvents,
  String? eventsSchedule,
  String? photoUrl2,
  String? photoUrl3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'address': address,
      'latitude': latitude,
      'longitude': longitude,
      'category': category,
      'is_fenced': isFenced,
      'opening_hours': openingHours,
      'photo_url': photoUrl,
      'description': description,
      'location': location,
      'special_events': specialEvents,
      'events_schedule': eventsSchedule,
      'photo_url_2': photoUrl2,
      'photo_url_3': photoUrl3,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlacesRecordDocumentEquality implements Equality<PlacesRecord> {
  const PlacesRecordDocumentEquality();

  @override
  bool equals(PlacesRecord? e1, PlacesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.address == e2?.address &&
        e1?.latitude == e2?.latitude &&
        e1?.longitude == e2?.longitude &&
        e1?.category == e2?.category &&
        e1?.isFenced == e2?.isFenced &&
        e1?.openingHours == e2?.openingHours &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.description == e2?.description &&
        e1?.location == e2?.location &&
        e1?.specialEvents == e2?.specialEvents &&
        e1?.eventsSchedule == e2?.eventsSchedule &&
        e1?.photoUrl2 == e2?.photoUrl2 &&
        e1?.photoUrl3 == e2?.photoUrl3;
  }

  @override
  int hash(PlacesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.address,
        e?.latitude,
        e?.longitude,
        e?.category,
        e?.isFenced,
        e?.openingHours,
        e?.photoUrl,
        e?.description,
        e?.location,
        e?.specialEvents,
        e?.eventsSchedule,
        e?.photoUrl2,
        e?.photoUrl3
      ]);

  @override
  bool isValidKey(Object? o) => o is PlacesRecord;
}
