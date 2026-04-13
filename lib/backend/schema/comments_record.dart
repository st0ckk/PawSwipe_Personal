import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentsRecord extends FirestoreRecord {
  CommentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "author_name" field.
  String? _authorName;
  String get authorName => _authorName ?? '';
  bool hasAuthorName() => _authorName != null;

  // "author_uid" field.
  String? _authorUid;
  String get authorUid => _authorUid ?? '';
  bool hasAuthorUid() => _authorUid != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "post_id" field.
  String? _postId;
  String get postId => _postId ?? '';
  bool hasPostId() => _postId != null;

  void _initializeFields() {
    _authorName = snapshotData['author_name'] as String?;
    _authorUid = snapshotData['author_uid'] as String?;
    _content = snapshotData['content'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _postId = snapshotData['post_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('comments');

  static Stream<CommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentsRecord.fromSnapshot(s));

  static Future<CommentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentsRecord.fromSnapshot(s));

  static CommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentsRecordData({
  String? authorName,
  String? authorUid,
  String? content,
  DateTime? createdTime,
  String? postId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'author_name': authorName,
      'author_uid': authorUid,
      'content': content,
      'created_time': createdTime,
      'post_id': postId,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentsRecordDocumentEquality implements Equality<CommentsRecord> {
  const CommentsRecordDocumentEquality();

  @override
  bool equals(CommentsRecord? e1, CommentsRecord? e2) {
    return e1?.authorName == e2?.authorName &&
        e1?.authorUid == e2?.authorUid &&
        e1?.content == e2?.content &&
        e1?.createdTime == e2?.createdTime &&
        e1?.postId == e2?.postId;
  }

  @override
  int hash(CommentsRecord? e) => const ListEquality().hash(
      [e?.authorName, e?.authorUid, e?.content, e?.createdTime, e?.postId]);

  @override
  bool isValidKey(Object? o) => o is CommentsRecord;
}
