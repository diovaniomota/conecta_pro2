import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class AgrupamentosRecord extends FirestoreRecord {
  AgrupamentosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "treinoId" field.
  DocumentReference? _treinoId;
  DocumentReference? get treinoId => _treinoId;
  bool hasTreinoId() => _treinoId != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _treinoId = snapshotData['treinoId'] as DocumentReference?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('agrupamentos');

  static Stream<AgrupamentosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AgrupamentosRecord.fromSnapshot(s));

  static Future<AgrupamentosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AgrupamentosRecord.fromSnapshot(s));

  static AgrupamentosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AgrupamentosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AgrupamentosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AgrupamentosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AgrupamentosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AgrupamentosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAgrupamentosRecordData({
  String? title,
  DocumentReference? treinoId,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'treinoId': treinoId,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class AgrupamentosRecordDocumentEquality
    implements Equality<AgrupamentosRecord> {
  const AgrupamentosRecordDocumentEquality();

  @override
  bool equals(AgrupamentosRecord? e1, AgrupamentosRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.treinoId == e2?.treinoId &&
        e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(AgrupamentosRecord? e) =>
      const ListEquality().hash([e?.title, e?.treinoId, e?.timestamp]);

  @override
  bool isValidKey(Object? o) => o is AgrupamentosRecord;
}
