import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssinaturasRecord extends FirestoreRecord {
  AssinaturasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  void _initializeFields() {
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _data = snapshotData['data'] as DateTime?;
    _valor = castToType<double>(snapshotData['valor']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('assinaturas');

  static Stream<AssinaturasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AssinaturasRecord.fromSnapshot(s));

  static Future<AssinaturasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AssinaturasRecord.fromSnapshot(s));

  static AssinaturasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AssinaturasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AssinaturasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AssinaturasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AssinaturasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AssinaturasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAssinaturasRecordData({
  DocumentReference? usuario,
  DateTime? data,
  double? valor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario': usuario,
      'data': data,
      'valor': valor,
    }.withoutNulls,
  );

  return firestoreData;
}

class AssinaturasRecordDocumentEquality implements Equality<AssinaturasRecord> {
  const AssinaturasRecordDocumentEquality();

  @override
  bool equals(AssinaturasRecord? e1, AssinaturasRecord? e2) {
    return e1?.usuario == e2?.usuario &&
        e1?.data == e2?.data &&
        e1?.valor == e2?.valor;
  }

  @override
  int hash(AssinaturasRecord? e) =>
      const ListEquality().hash([e?.usuario, e?.data, e?.valor]);

  @override
  bool isValidKey(Object? o) => o is AssinaturasRecord;
}
