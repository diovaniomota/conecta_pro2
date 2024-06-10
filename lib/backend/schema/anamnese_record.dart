import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnamneseRecord extends FirestoreRecord {
  AnamneseRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "foco" field.
  String? _foco;
  String get foco => _foco ?? '';
  bool hasFoco() => _foco != null;

  // "idade" field.
  int? _idade;
  int get idade => _idade ?? 0;
  bool hasIdade() => _idade != null;

  // "whatSport" field.
  String? _whatSport;
  String get whatSport => _whatSport ?? '';
  bool hasWhatSport() => _whatSport != null;

  // "timeSport" field.
  String? _timeSport;
  String get timeSport => _timeSport ?? '';
  bool hasTimeSport() => _timeSport != null;

  // "withoutSport" field.
  String? _withoutSport;
  String get withoutSport => _withoutSport ?? '';
  bool hasWithoutSport() => _withoutSport != null;

  // "whatDorCostas" field.
  String? _whatDorCostas;
  String get whatDorCostas => _whatDorCostas ?? '';
  bool hasWhatDorCostas() => _whatDorCostas != null;

  // "whatDisfOrtopedica" field.
  String? _whatDisfOrtopedica;
  String get whatDisfOrtopedica => _whatDisfOrtopedica ?? '';
  bool hasWhatDisfOrtopedica() => _whatDisfOrtopedica != null;

  // "whatPatologia" field.
  String? _whatPatologia;
  String get whatPatologia => _whatPatologia ?? '';
  bool hasWhatPatologia() => _whatPatologia != null;

  // "whatLimite" field.
  String? _whatLimite;
  String get whatLimite => _whatLimite ?? '';
  bool hasWhatLimite() => _whatLimite != null;

  // "whatRemedio" field.
  String? _whatRemedio;
  String get whatRemedio => _whatRemedio ?? '';
  bool hasWhatRemedio() => _whatRemedio != null;

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "timeStamp" field.
  DateTime? _timeStamp;
  DateTime? get timeStamp => _timeStamp;
  bool hasTimeStamp() => _timeStamp != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "fumante" field.
  String? _fumante;
  String get fumante => _fumante ?? '';
  bool hasFumante() => _fumante != null;

  // "colesterolAlto" field.
  String? _colesterolAlto;
  String get colesterolAlto => _colesterolAlto ?? '';
  bool hasColesterolAlto() => _colesterolAlto != null;

  // "dorCostas" field.
  String? _dorCostas;
  String get dorCostas => _dorCostas ?? '';
  bool hasDorCostas() => _dorCostas != null;

  // "disfOrtopedica" field.
  String? _disfOrtopedica;
  String get disfOrtopedica => _disfOrtopedica ?? '';
  bool hasDisfOrtopedica() => _disfOrtopedica != null;

  // "patologia" field.
  String? _patologia;
  String get patologia => _patologia ?? '';
  bool hasPatologia() => _patologia != null;

  // "limiteMovimento" field.
  String? _limiteMovimento;
  String get limiteMovimento => _limiteMovimento ?? '';
  bool hasLimiteMovimento() => _limiteMovimento != null;

  // "usaRemedio" field.
  String? _usaRemedio;
  String get usaRemedio => _usaRemedio ?? '';
  bool hasUsaRemedio() => _usaRemedio != null;

  void _initializeFields() {
    _foco = snapshotData['foco'] as String?;
    _idade = castToType<int>(snapshotData['idade']);
    _whatSport = snapshotData['whatSport'] as String?;
    _timeSport = snapshotData['timeSport'] as String?;
    _withoutSport = snapshotData['withoutSport'] as String?;
    _whatDorCostas = snapshotData['whatDorCostas'] as String?;
    _whatDisfOrtopedica = snapshotData['whatDisfOrtopedica'] as String?;
    _whatPatologia = snapshotData['whatPatologia'] as String?;
    _whatLimite = snapshotData['whatLimite'] as String?;
    _whatRemedio = snapshotData['whatRemedio'] as String?;
    _userID = snapshotData['userID'] as DocumentReference?;
    _timeStamp = snapshotData['timeStamp'] as DateTime?;
    _title = snapshotData['title'] as String?;
    _fumante = snapshotData['fumante'] as String?;
    _colesterolAlto = snapshotData['colesterolAlto'] as String?;
    _dorCostas = snapshotData['dorCostas'] as String?;
    _disfOrtopedica = snapshotData['disfOrtopedica'] as String?;
    _patologia = snapshotData['patologia'] as String?;
    _limiteMovimento = snapshotData['limiteMovimento'] as String?;
    _usaRemedio = snapshotData['usaRemedio'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('anamnese');

  static Stream<AnamneseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnamneseRecord.fromSnapshot(s));

  static Future<AnamneseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnamneseRecord.fromSnapshot(s));

  static AnamneseRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnamneseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnamneseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnamneseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnamneseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnamneseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnamneseRecordData({
  String? foco,
  int? idade,
  String? whatSport,
  String? timeSport,
  String? withoutSport,
  String? whatDorCostas,
  String? whatDisfOrtopedica,
  String? whatPatologia,
  String? whatLimite,
  String? whatRemedio,
  DocumentReference? userID,
  DateTime? timeStamp,
  String? title,
  String? fumante,
  String? colesterolAlto,
  String? dorCostas,
  String? disfOrtopedica,
  String? patologia,
  String? limiteMovimento,
  String? usaRemedio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'foco': foco,
      'idade': idade,
      'whatSport': whatSport,
      'timeSport': timeSport,
      'withoutSport': withoutSport,
      'whatDorCostas': whatDorCostas,
      'whatDisfOrtopedica': whatDisfOrtopedica,
      'whatPatologia': whatPatologia,
      'whatLimite': whatLimite,
      'whatRemedio': whatRemedio,
      'userID': userID,
      'timeStamp': timeStamp,
      'title': title,
      'fumante': fumante,
      'colesterolAlto': colesterolAlto,
      'dorCostas': dorCostas,
      'disfOrtopedica': disfOrtopedica,
      'patologia': patologia,
      'limiteMovimento': limiteMovimento,
      'usaRemedio': usaRemedio,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnamneseRecordDocumentEquality implements Equality<AnamneseRecord> {
  const AnamneseRecordDocumentEquality();

  @override
  bool equals(AnamneseRecord? e1, AnamneseRecord? e2) {
    return e1?.foco == e2?.foco &&
        e1?.idade == e2?.idade &&
        e1?.whatSport == e2?.whatSport &&
        e1?.timeSport == e2?.timeSport &&
        e1?.withoutSport == e2?.withoutSport &&
        e1?.whatDorCostas == e2?.whatDorCostas &&
        e1?.whatDisfOrtopedica == e2?.whatDisfOrtopedica &&
        e1?.whatPatologia == e2?.whatPatologia &&
        e1?.whatLimite == e2?.whatLimite &&
        e1?.whatRemedio == e2?.whatRemedio &&
        e1?.userID == e2?.userID &&
        e1?.timeStamp == e2?.timeStamp &&
        e1?.title == e2?.title &&
        e1?.fumante == e2?.fumante &&
        e1?.colesterolAlto == e2?.colesterolAlto &&
        e1?.dorCostas == e2?.dorCostas &&
        e1?.disfOrtopedica == e2?.disfOrtopedica &&
        e1?.patologia == e2?.patologia &&
        e1?.limiteMovimento == e2?.limiteMovimento &&
        e1?.usaRemedio == e2?.usaRemedio;
  }

  @override
  int hash(AnamneseRecord? e) => const ListEquality().hash([
        e?.foco,
        e?.idade,
        e?.whatSport,
        e?.timeSport,
        e?.withoutSport,
        e?.whatDorCostas,
        e?.whatDisfOrtopedica,
        e?.whatPatologia,
        e?.whatLimite,
        e?.whatRemedio,
        e?.userID,
        e?.timeStamp,
        e?.title,
        e?.fumante,
        e?.colesterolAlto,
        e?.dorCostas,
        e?.disfOrtopedica,
        e?.patologia,
        e?.limiteMovimento,
        e?.usaRemedio
      ]);

  @override
  bool isValidKey(Object? o) => o is AnamneseRecord;
}
