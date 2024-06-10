import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TreinosRecord extends FirestoreRecord {
  TreinosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "personal" field.
  DocumentReference? _personal;
  DocumentReference? get personal => _personal;
  bool hasPersonal() => _personal != null;

  // "intensidade" field.
  String? _intensidade;
  String get intensidade => _intensidade ?? '';
  bool hasIntensidade() => _intensidade != null;

  // "objetivo" field.
  String? _objetivo;
  String get objetivo => _objetivo ?? '';
  bool hasObjetivo() => _objetivo != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "imagemCapa" field.
  String? _imagemCapa;
  String get imagemCapa => _imagemCapa ?? '';
  bool hasImagemCapa() => _imagemCapa != null;

  // "aluno" field.
  DocumentReference? _aluno;
  DocumentReference? get aluno => _aluno;
  bool hasAluno() => _aluno != null;

  // "totalMinutos" field.
  int? _totalMinutos;
  int get totalMinutos => _totalMinutos ?? 0;
  bool hasTotalMinutos() => _totalMinutos != null;

  // "treinoid" field.
  DocumentReference? _treinoid;
  DocumentReference? get treinoid => _treinoid;
  bool hasTreinoid() => _treinoid != null;

  void _initializeFields() {
    _personal = snapshotData['personal'] as DocumentReference?;
    _intensidade = snapshotData['intensidade'] as String?;
    _objetivo = snapshotData['objetivo'] as String?;
    _titulo = snapshotData['titulo'] as String?;
    _data = snapshotData['data'] as DateTime?;
    _imagemCapa = snapshotData['imagemCapa'] as String?;
    _aluno = snapshotData['aluno'] as DocumentReference?;
    _totalMinutos = castToType<int>(snapshotData['totalMinutos']);
    _treinoid = snapshotData['treinoid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('treinos');

  static Stream<TreinosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TreinosRecord.fromSnapshot(s));

  static Future<TreinosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TreinosRecord.fromSnapshot(s));

  static TreinosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TreinosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TreinosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TreinosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TreinosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TreinosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTreinosRecordData({
  DocumentReference? personal,
  String? intensidade,
  String? objetivo,
  String? titulo,
  DateTime? data,
  String? imagemCapa,
  DocumentReference? aluno,
  int? totalMinutos,
  DocumentReference? treinoid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'personal': personal,
      'intensidade': intensidade,
      'objetivo': objetivo,
      'titulo': titulo,
      'data': data,
      'imagemCapa': imagemCapa,
      'aluno': aluno,
      'totalMinutos': totalMinutos,
      'treinoid': treinoid,
    }.withoutNulls,
  );

  return firestoreData;
}

class TreinosRecordDocumentEquality implements Equality<TreinosRecord> {
  const TreinosRecordDocumentEquality();

  @override
  bool equals(TreinosRecord? e1, TreinosRecord? e2) {
    return e1?.personal == e2?.personal &&
        e1?.intensidade == e2?.intensidade &&
        e1?.objetivo == e2?.objetivo &&
        e1?.titulo == e2?.titulo &&
        e1?.data == e2?.data &&
        e1?.imagemCapa == e2?.imagemCapa &&
        e1?.aluno == e2?.aluno &&
        e1?.totalMinutos == e2?.totalMinutos &&
        e1?.treinoid == e2?.treinoid;
  }

  @override
  int hash(TreinosRecord? e) => const ListEquality().hash([
        e?.personal,
        e?.intensidade,
        e?.objetivo,
        e?.titulo,
        e?.data,
        e?.imagemCapa,
        e?.aluno,
        e?.totalMinutos,
        e?.treinoid
      ]);

  @override
  bool isValidKey(Object? o) => o is TreinosRecord;
}
