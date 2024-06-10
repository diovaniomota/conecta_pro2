import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegistrosMensalidadesRecord extends FirestoreRecord {
  RegistrosMensalidadesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "aluno" field.
  DocumentReference? _aluno;
  DocumentReference? get aluno => _aluno;
  bool hasAluno() => _aluno != null;

  // "personal" field.
  DocumentReference? _personal;
  DocumentReference? get personal => _personal;
  bool hasPersonal() => _personal != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  void _initializeFields() {
    _aluno = snapshotData['aluno'] as DocumentReference?;
    _personal = snapshotData['personal'] as DocumentReference?;
    _data = snapshotData['data'] as DateTime?;
    _valor = castToType<double>(snapshotData['valor']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('registrosMensalidades');

  static Stream<RegistrosMensalidadesRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => RegistrosMensalidadesRecord.fromSnapshot(s));

  static Future<RegistrosMensalidadesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RegistrosMensalidadesRecord.fromSnapshot(s));

  static RegistrosMensalidadesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegistrosMensalidadesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistrosMensalidadesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistrosMensalidadesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistrosMensalidadesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistrosMensalidadesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistrosMensalidadesRecordData({
  DocumentReference? aluno,
  DocumentReference? personal,
  DateTime? data,
  double? valor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'aluno': aluno,
      'personal': personal,
      'data': data,
      'valor': valor,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistrosMensalidadesRecordDocumentEquality
    implements Equality<RegistrosMensalidadesRecord> {
  const RegistrosMensalidadesRecordDocumentEquality();

  @override
  bool equals(
      RegistrosMensalidadesRecord? e1, RegistrosMensalidadesRecord? e2) {
    return e1?.aluno == e2?.aluno &&
        e1?.personal == e2?.personal &&
        e1?.data == e2?.data &&
        e1?.valor == e2?.valor;
  }

  @override
  int hash(RegistrosMensalidadesRecord? e) =>
      const ListEquality().hash([e?.aluno, e?.personal, e?.data, e?.valor]);

  @override
  bool isValidKey(Object? o) => o is RegistrosMensalidadesRecord;
}
