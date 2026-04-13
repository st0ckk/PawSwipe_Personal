import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "location_enabled" field.
  bool? _locationEnabled;
  bool get locationEnabled => _locationEnabled ?? false;
  bool hasLocationEnabled() => _locationEnabled != null;

  // "favorite_places" field.
  List<DocumentReference>? _favoritePlaces;
  List<DocumentReference> get favoritePlaces => _favoritePlaces ?? const [];
  bool hasFavoritePlaces() => _favoritePlaces != null;

  // "swiped_pets" field.
  List<DocumentReference>? _swipedPets;
  List<DocumentReference> get swipedPets => _swipedPets ?? const [];
  bool hasSwipedPets() => _swipedPets != null;

  // "location_visibility" field.
  bool? _locationVisibility;
  bool get locationVisibility => _locationVisibility ?? false;
  bool hasLocationVisibility() => _locationVisibility != null;

  // "photo_visibility" field.
  bool? _photoVisibility;
  bool get photoVisibility => _photoVisibility ?? false;
  bool hasPhotoVisibility() => _photoVisibility != null;

  // "profile_visibility" field.
  bool? _profileVisibility;
  bool get profileVisibility => _profileVisibility ?? false;
  bool hasProfileVisibility() => _profileVisibility != null;

  // "newMessagesEnabled" field.
  bool? _newMessagesEnabled;
  bool get newMessagesEnabled => _newMessagesEnabled ?? false;
  bool hasNewMessagesEnabled() => _newMessagesEnabled != null;

  // "newPupMatchesEnabled" field.
  bool? _newPupMatchesEnabled;
  bool get newPupMatchesEnabled => _newPupMatchesEnabled ?? false;
  bool hasNewPupMatchesEnabled() => _newPupMatchesEnabled != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _locationEnabled = snapshotData['location_enabled'] as bool?;
    _favoritePlaces = getDataList(snapshotData['favorite_places']);
    _swipedPets = getDataList(snapshotData['swiped_pets']);
    _locationVisibility = snapshotData['location_visibility'] as bool?;
    _photoVisibility = snapshotData['photo_visibility'] as bool?;
    _profileVisibility = snapshotData['profile_visibility'] as bool?;
    _newMessagesEnabled = snapshotData['newMessagesEnabled'] as bool?;
    _newPupMatchesEnabled = snapshotData['newPupMatchesEnabled'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? locationEnabled,
  bool? locationVisibility,
  bool? photoVisibility,
  bool? profileVisibility,
  bool? newMessagesEnabled,
  bool? newPupMatchesEnabled,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'location_enabled': locationEnabled,
      'location_visibility': locationVisibility,
      'photo_visibility': photoVisibility,
      'profile_visibility': profileVisibility,
      'newMessagesEnabled': newMessagesEnabled,
      'newPupMatchesEnabled': newPupMatchesEnabled,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.locationEnabled == e2?.locationEnabled &&
        listEquality.equals(e1?.favoritePlaces, e2?.favoritePlaces) &&
        listEquality.equals(e1?.swipedPets, e2?.swipedPets) &&
        e1?.locationVisibility == e2?.locationVisibility &&
        e1?.photoVisibility == e2?.photoVisibility &&
        e1?.profileVisibility == e2?.profileVisibility &&
        e1?.newMessagesEnabled == e2?.newMessagesEnabled &&
        e1?.newPupMatchesEnabled == e2?.newPupMatchesEnabled;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.locationEnabled,
        e?.favoritePlaces,
        e?.swipedPets,
        e?.locationVisibility,
        e?.photoVisibility,
        e?.profileVisibility,
        e?.newMessagesEnabled,
        e?.newPupMatchesEnabled
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
