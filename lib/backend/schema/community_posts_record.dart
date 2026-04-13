import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommunityPostsRecord extends FirestoreRecord {
  CommunityPostsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "comments_count" field.
  int? _commentsCount;
  int get commentsCount => _commentsCount ?? 0;
  bool hasCommentsCount() => _commentsCount != null;

  // "likes_count" field.
  int? _likesCount;
  int get likesCount => _likesCount ?? 0;
  bool hasLikesCount() => _likesCount != null;

  // "saves_count" field.
  int? _savesCount;
  int get savesCount => _savesCount ?? 0;
  bool hasSavesCount() => _savesCount != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "author_name" field.
  String? _authorName;
  String get authorName => _authorName ?? '';
  bool hasAuthorName() => _authorName != null;

  // "liked_by" field.
  List<String>? _likedBy;
  List<String> get likedBy => _likedBy ?? const [];
  bool hasLikedBy() => _likedBy != null;

  void _initializeFields() {
    _content = snapshotData['content'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _commentsCount = castToType<int>(snapshotData['comments_count']);
    _likesCount = castToType<int>(snapshotData['likes_count']);
    _savesCount = castToType<int>(snapshotData['saves_count']);
    _category = snapshotData['category'] as String?;
    _authorName = snapshotData['author_name'] as String?;
    _likedBy = getDataList(snapshotData['liked_by']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('community_posts');

  static Stream<CommunityPostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommunityPostsRecord.fromSnapshot(s));

  static Future<CommunityPostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommunityPostsRecord.fromSnapshot(s));

  static CommunityPostsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommunityPostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommunityPostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommunityPostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommunityPostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommunityPostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommunityPostsRecordData({
  String? content,
  DateTime? createdTime,
  int? commentsCount,
  int? likesCount,
  int? savesCount,
  String? category,
  String? authorName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'content': content,
      'created_time': createdTime,
      'comments_count': commentsCount,
      'likes_count': likesCount,
      'saves_count': savesCount,
      'category': category,
      'author_name': authorName,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommunityPostsRecordDocumentEquality
    implements Equality<CommunityPostsRecord> {
  const CommunityPostsRecordDocumentEquality();

  @override
  bool equals(CommunityPostsRecord? e1, CommunityPostsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.content == e2?.content &&
        e1?.createdTime == e2?.createdTime &&
        e1?.commentsCount == e2?.commentsCount &&
        e1?.likesCount == e2?.likesCount &&
        e1?.savesCount == e2?.savesCount &&
        e1?.category == e2?.category &&
        e1?.authorName == e2?.authorName &&
        listEquality.equals(e1?.likedBy, e2?.likedBy);
  }

  @override
  int hash(CommunityPostsRecord? e) => const ListEquality().hash([
        e?.content,
        e?.createdTime,
        e?.commentsCount,
        e?.likesCount,
        e?.savesCount,
        e?.category,
        e?.authorName,
        e?.likedBy
      ]);

  @override
  bool isValidKey(Object? o) => o is CommunityPostsRecord;
}
