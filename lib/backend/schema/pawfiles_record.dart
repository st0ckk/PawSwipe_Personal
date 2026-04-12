import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PawfilesRecord extends FirestoreRecord {
  PawfilesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "dogName" field.
  String? _dogName;
  String get dogName => _dogName ?? '';
  bool hasDogName() => _dogName != null;

  // "dogBreed" field.
  String? _dogBreed;
  String get dogBreed => _dogBreed ?? '';
  bool hasDogBreed() => _dogBreed != null;

  // "dogSize" field.
  String? _dogSize;
  String get dogSize => _dogSize ?? '';
  bool hasDogSize() => _dogSize != null;

  // "dogGender" field.
  String? _dogGender;
  String get dogGender => _dogGender ?? '';
  bool hasDogGender() => _dogGender != null;

  // "dogAge" field.
  String? _dogAge;
  String get dogAge => _dogAge ?? '';
  bool hasDogAge() => _dogAge != null;

  // "dogEnergyLevel" field.
  String? _dogEnergyLevel;
  String get dogEnergyLevel => _dogEnergyLevel ?? '';
  bool hasDogEnergyLevel() => _dogEnergyLevel != null;

  // "dogDescription" field.
  String? _dogDescription;
  String get dogDescription => _dogDescription ?? '';
  bool hasDogDescription() => _dogDescription != null;

  // "dogPhoto1" field.
  String? _dogPhoto1;
  String get dogPhoto1 => _dogPhoto1 ?? '';
  bool hasDogPhoto1() => _dogPhoto1 != null;

  // "dogPhoto2" field.
  String? _dogPhoto2;
  String get dogPhoto2 => _dogPhoto2 ?? '';
  bool hasDogPhoto2() => _dogPhoto2 != null;

  // "dogPhoto3" field.
  String? _dogPhoto3;
  String get dogPhoto3 => _dogPhoto3 ?? '';
  bool hasDogPhoto3() => _dogPhoto3 != null;

  // "dogPhoto4" field.
  String? _dogPhoto4;
  String get dogPhoto4 => _dogPhoto4 ?? '';
  bool hasDogPhoto4() => _dogPhoto4 != null;

  // "owner_ref" field.
  DocumentReference? _ownerRef;
  DocumentReference? get ownerRef => _ownerRef;
  bool hasOwnerRef() => _ownerRef != null;

  // "prefSize" field.
  List<String>? _prefSize;
  List<String> get prefSize => _prefSize ?? const [];
  bool hasPrefSize() => _prefSize != null;

  // "prefGender" field.
  List<String>? _prefGender;
  List<String> get prefGender => _prefGender ?? const [];
  bool hasPrefGender() => _prefGender != null;

  // "prefAge" field.
  List<String>? _prefAge;
  List<String> get prefAge => _prefAge ?? const [];
  bool hasPrefAge() => _prefAge != null;

  // "prefEnergy" field.
  List<String>? _prefEnergy;
  List<String> get prefEnergy => _prefEnergy ?? const [];
  bool hasPrefEnergy() => _prefEnergy != null;

  // "prefDistance" field.
  String? _prefDistance;
  String get prefDistance => _prefDistance ?? '';
  bool hasPrefDistance() => _prefDistance != null;

  // "pet_id_ref" field.
  DocumentReference? _petIdRef;
  DocumentReference? get petIdRef => _petIdRef;
  bool hasPetIdRef() => _petIdRef != null;

  void _initializeFields() {
    _dogName = snapshotData['dogName'] as String?;
    _dogBreed = snapshotData['dogBreed'] as String?;
    _dogSize = snapshotData['dogSize'] as String?;
    _dogGender = snapshotData['dogGender'] as String?;
    _dogAge = snapshotData['dogAge'] as String?;
    _dogEnergyLevel = snapshotData['dogEnergyLevel'] as String?;
    _dogDescription = snapshotData['dogDescription'] as String?;
    _dogPhoto1 = snapshotData['dogPhoto1'] as String?;
    _dogPhoto2 = snapshotData['dogPhoto2'] as String?;
    _dogPhoto3 = snapshotData['dogPhoto3'] as String?;
    _dogPhoto4 = snapshotData['dogPhoto4'] as String?;
    _ownerRef = snapshotData['owner_ref'] as DocumentReference?;
    _prefSize = getDataList(snapshotData['prefSize']);
    _prefGender = getDataList(snapshotData['prefGender']);
    _prefAge = getDataList(snapshotData['prefAge']);
    _prefEnergy = getDataList(snapshotData['prefEnergy']);
    _prefDistance = snapshotData['prefDistance'] as String?;
    _petIdRef = snapshotData['pet_id_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pawfiles');

  static Stream<PawfilesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PawfilesRecord.fromSnapshot(s));

  static Future<PawfilesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PawfilesRecord.fromSnapshot(s));

  static PawfilesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PawfilesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PawfilesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PawfilesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PawfilesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PawfilesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPawfilesRecordData({
  String? dogName,
  String? dogBreed,
  String? dogSize,
  String? dogGender,
  String? dogAge,
  String? dogEnergyLevel,
  String? dogDescription,
  String? dogPhoto1,
  String? dogPhoto2,
  String? dogPhoto3,
  String? dogPhoto4,
  DocumentReference? ownerRef,
  String? prefDistance,
  DocumentReference? petIdRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dogName': dogName,
      'dogBreed': dogBreed,
      'dogSize': dogSize,
      'dogGender': dogGender,
      'dogAge': dogAge,
      'dogEnergyLevel': dogEnergyLevel,
      'dogDescription': dogDescription,
      'dogPhoto1': dogPhoto1,
      'dogPhoto2': dogPhoto2,
      'dogPhoto3': dogPhoto3,
      'dogPhoto4': dogPhoto4,
      'owner_ref': ownerRef,
      'prefDistance': prefDistance,
      'pet_id_ref': petIdRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class PawfilesRecordDocumentEquality implements Equality<PawfilesRecord> {
  const PawfilesRecordDocumentEquality();

  @override
  bool equals(PawfilesRecord? e1, PawfilesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.dogName == e2?.dogName &&
        e1?.dogBreed == e2?.dogBreed &&
        e1?.dogSize == e2?.dogSize &&
        e1?.dogGender == e2?.dogGender &&
        e1?.dogAge == e2?.dogAge &&
        e1?.dogEnergyLevel == e2?.dogEnergyLevel &&
        e1?.dogDescription == e2?.dogDescription &&
        e1?.dogPhoto1 == e2?.dogPhoto1 &&
        e1?.dogPhoto2 == e2?.dogPhoto2 &&
        e1?.dogPhoto3 == e2?.dogPhoto3 &&
        e1?.dogPhoto4 == e2?.dogPhoto4 &&
        e1?.ownerRef == e2?.ownerRef &&
        listEquality.equals(e1?.prefSize, e2?.prefSize) &&
        listEquality.equals(e1?.prefGender, e2?.prefGender) &&
        listEquality.equals(e1?.prefAge, e2?.prefAge) &&
        listEquality.equals(e1?.prefEnergy, e2?.prefEnergy) &&
        e1?.prefDistance == e2?.prefDistance &&
        e1?.petIdRef == e2?.petIdRef;
  }

  @override
  int hash(PawfilesRecord? e) => const ListEquality().hash([
        e?.dogName,
        e?.dogBreed,
        e?.dogSize,
        e?.dogGender,
        e?.dogAge,
        e?.dogEnergyLevel,
        e?.dogDescription,
        e?.dogPhoto1,
        e?.dogPhoto2,
        e?.dogPhoto3,
        e?.dogPhoto4,
        e?.ownerRef,
        e?.prefSize,
        e?.prefGender,
        e?.prefAge,
        e?.prefEnergy,
        e?.prefDistance,
        e?.petIdRef
      ]);

  @override
  bool isValidKey(Object? o) => o is PawfilesRecord;
}
