import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SwipesRecord extends FirestoreRecord {
  SwipesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "pet_ref" field.
  DocumentReference? _petRef;
  DocumentReference? get petRef => _petRef;
  bool hasPetRef() => _petRef != null;

  // "action" field.
  bool? _action;

  /// Like (True) and Dislike (False)
  bool get action => _action ?? false;
  bool hasAction() => _action != null;

  // "blocked" field.
  bool? _blocked;
  bool get blocked => _blocked ?? false;
  bool hasBlocked() => _blocked != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _petRef = snapshotData['pet_ref'] as DocumentReference?;
    _action = snapshotData['action'] as bool?;
    _blocked = snapshotData['blocked'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('swipes');

  static Stream<SwipesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SwipesRecord.fromSnapshot(s));

  static Future<SwipesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SwipesRecord.fromSnapshot(s));

  static SwipesRecord fromSnapshot(DocumentSnapshot snapshot) => SwipesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SwipesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SwipesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SwipesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SwipesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSwipesRecordData({
  DocumentReference? userRef,
  DocumentReference? petRef,
  bool? action,
  bool? blocked,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'pet_ref': petRef,
      'action': action,
      'blocked': blocked,
    }.withoutNulls,
  );

  return firestoreData;
}

class SwipesRecordDocumentEquality implements Equality<SwipesRecord> {
  const SwipesRecordDocumentEquality();

  @override
  bool equals(SwipesRecord? e1, SwipesRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.petRef == e2?.petRef &&
        e1?.action == e2?.action &&
        e1?.blocked == e2?.blocked;
  }

  @override
  int hash(SwipesRecord? e) =>
      const ListEquality().hash([e?.userRef, e?.petRef, e?.action, e?.blocked]);

  @override
  bool isValidKey(Object? o) => o is SwipesRecord;
}
