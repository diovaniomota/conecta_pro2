import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class VideoRecord extends FirestoreRecord {
  VideoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "treinoId" field.
  DocumentReference? _treinoId;
  DocumentReference? get treinoId => _treinoId;
  bool hasTreinoId() => _treinoId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "agrupamentoid" field.
  DocumentReference? _agrupamentoid;
  DocumentReference? get agrupamentoid => _agrupamentoid;
  bool hasAgrupamentoid() => _agrupamentoid != null;

  void _initializeFields() {
    _treinoId = snapshotData['treinoId'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _video = snapshotData['video'] as String?;
    _agrupamentoid = snapshotData['agrupamentoid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('video');

  static Stream<VideoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VideoRecord.fromSnapshot(s));

  static Future<VideoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VideoRecord.fromSnapshot(s));

  static VideoRecord fromSnapshot(DocumentSnapshot snapshot) => VideoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VideoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VideoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VideoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VideoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVideoRecordData({
  DocumentReference? treinoId,
  String? title,
  DateTime? timestamp,
  String? video,
  DocumentReference? agrupamentoid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'treinoId': treinoId,
      'title': title,
      'timestamp': timestamp,
      'video': video,
      'agrupamentoid': agrupamentoid,
    }.withoutNulls,
  );

  return firestoreData;
}

class VideoRecordDocumentEquality implements Equality<VideoRecord> {
  const VideoRecordDocumentEquality();

  @override
  bool equals(VideoRecord? e1, VideoRecord? e2) {
    return e1?.treinoId == e2?.treinoId &&
        e1?.title == e2?.title &&
        e1?.timestamp == e2?.timestamp &&
        e1?.video == e2?.video &&
        e1?.agrupamentoid == e2?.agrupamentoid;
  }

  @override
  int hash(VideoRecord? e) => const ListEquality()
      .hash([e?.treinoId, e?.title, e?.timestamp, e?.video, e?.agrupamentoid]);

  @override
  bool isValidKey(Object? o) => o is VideoRecord;
}
