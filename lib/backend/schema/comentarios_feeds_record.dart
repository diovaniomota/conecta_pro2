import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ComentariosFeedsRecord extends FirestoreRecord {
  ComentariosFeedsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "feed" field.
  DocumentReference? _feed;
  DocumentReference? get feed => _feed;
  bool hasFeed() => _feed != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "bloqueado" field.
  bool? _bloqueado;
  bool get bloqueado => _bloqueado ?? false;
  bool hasBloqueado() => _bloqueado != null;

  // "texto" field.
  String? _texto;
  String get texto => _texto ?? '';
  bool hasTexto() => _texto != null;

  void _initializeFields() {
    _feed = snapshotData['feed'] as DocumentReference?;
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _data = snapshotData['data'] as DateTime?;
    _bloqueado = snapshotData['bloqueado'] as bool?;
    _texto = snapshotData['texto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('comentariosFeeds');

  static Stream<ComentariosFeedsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ComentariosFeedsRecord.fromSnapshot(s));

  static Future<ComentariosFeedsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ComentariosFeedsRecord.fromSnapshot(s));

  static ComentariosFeedsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ComentariosFeedsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ComentariosFeedsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ComentariosFeedsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ComentariosFeedsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ComentariosFeedsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createComentariosFeedsRecordData({
  DocumentReference? feed,
  DocumentReference? usuario,
  DateTime? data,
  bool? bloqueado,
  String? texto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'feed': feed,
      'usuario': usuario,
      'data': data,
      'bloqueado': bloqueado,
      'texto': texto,
    }.withoutNulls,
  );

  return firestoreData;
}

class ComentariosFeedsRecordDocumentEquality
    implements Equality<ComentariosFeedsRecord> {
  const ComentariosFeedsRecordDocumentEquality();

  @override
  bool equals(ComentariosFeedsRecord? e1, ComentariosFeedsRecord? e2) {
    return e1?.feed == e2?.feed &&
        e1?.usuario == e2?.usuario &&
        e1?.data == e2?.data &&
        e1?.bloqueado == e2?.bloqueado &&
        e1?.texto == e2?.texto;
  }

  @override
  int hash(ComentariosFeedsRecord? e) => const ListEquality()
      .hash([e?.feed, e?.usuario, e?.data, e?.bloqueado, e?.texto]);

  @override
  bool isValidKey(Object? o) => o is ComentariosFeedsRecord;
}
