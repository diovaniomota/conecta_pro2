import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class EnderecoRecord extends FirestoreRecord {
  EnderecoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "localidade" field.
  String? _localidade;
  String get localidade => _localidade ?? '';
  bool hasLocalidade() => _localidade != null;

  // "uf" field.
  String? _uf;
  String get uf => _uf ?? '';
  bool hasUf() => _uf != null;

  // "logradouro" field.
  String? _logradouro;
  String get logradouro => _logradouro ?? '';
  bool hasLogradouro() => _logradouro != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  bool hasBairro() => _bairro != null;

  // "numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  bool hasNumero() => _numero != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  void _initializeFields() {
    _localidade = snapshotData['localidade'] as String?;
    _uf = snapshotData['uf'] as String?;
    _logradouro = snapshotData['logradouro'] as String?;
    _bairro = snapshotData['bairro'] as String?;
    _numero = snapshotData['numero'] as String?;
    _usuario = snapshotData['usuario'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('endereco');

  static Stream<EnderecoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EnderecoRecord.fromSnapshot(s));

  static Future<EnderecoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EnderecoRecord.fromSnapshot(s));

  static EnderecoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EnderecoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EnderecoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EnderecoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EnderecoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EnderecoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEnderecoRecordData({
  String? localidade,
  String? uf,
  String? logradouro,
  String? bairro,
  String? numero,
  DocumentReference? usuario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'localidade': localidade,
      'uf': uf,
      'logradouro': logradouro,
      'bairro': bairro,
      'numero': numero,
      'usuario': usuario,
    }.withoutNulls,
  );

  return firestoreData;
}

class EnderecoRecordDocumentEquality implements Equality<EnderecoRecord> {
  const EnderecoRecordDocumentEquality();

  @override
  bool equals(EnderecoRecord? e1, EnderecoRecord? e2) {
    return e1?.localidade == e2?.localidade &&
        e1?.uf == e2?.uf &&
        e1?.logradouro == e2?.logradouro &&
        e1?.bairro == e2?.bairro &&
        e1?.numero == e2?.numero &&
        e1?.usuario == e2?.usuario;
  }

  @override
  int hash(EnderecoRecord? e) => const ListEquality().hash(
      [e?.localidade, e?.uf, e?.logradouro, e?.bairro, e?.numero, e?.usuario]);

  @override
  bool isValidKey(Object? o) => o is EnderecoRecord;
}
