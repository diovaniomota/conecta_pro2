import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class NotificacaoRecord extends FirestoreRecord {
  NotificacaoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "sender" field.
  DocumentReference? _sender;
  DocumentReference? get sender => _sender;
  bool hasSender() => _sender != null;

  // "recipient" field.
  DocumentReference? _recipient;
  DocumentReference? get recipient => _recipient;
  bool hasRecipient() => _recipient != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "read_at" field.
  DateTime? _readAt;
  DateTime? get readAt => _readAt;
  bool hasReadAt() => _readAt != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _sender = snapshotData['sender'] as DocumentReference?;
    _recipient = snapshotData['recipient'] as DocumentReference?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _readAt = snapshotData['read_at'] as DateTime?;
    _type = snapshotData['type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notificacao');

  static Stream<NotificacaoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificacaoRecord.fromSnapshot(s));

  static Future<NotificacaoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificacaoRecord.fromSnapshot(s));

  static NotificacaoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificacaoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificacaoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificacaoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificacaoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificacaoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificacaoRecordData({
  DocumentReference? sender,
  DocumentReference? recipient,
  DateTime? createdAt,
  DateTime? readAt,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sender': sender,
      'recipient': recipient,
      'created_at': createdAt,
      'read_at': readAt,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificacaoRecordDocumentEquality implements Equality<NotificacaoRecord> {
  const NotificacaoRecordDocumentEquality();

  @override
  bool equals(NotificacaoRecord? e1, NotificacaoRecord? e2) {
    return e1?.sender == e2?.sender &&
        e1?.recipient == e2?.recipient &&
        e1?.createdAt == e2?.createdAt &&
        e1?.readAt == e2?.readAt &&
        e1?.type == e2?.type;
  }

  @override
  int hash(NotificacaoRecord? e) => const ListEquality()
      .hash([e?.sender, e?.recipient, e?.createdAt, e?.readAt, e?.type]);

  @override
  bool isValidKey(Object? o) => o is NotificacaoRecord;
}
