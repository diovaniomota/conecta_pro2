import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PerimetrosRecord extends FirestoreRecord {
  PerimetrosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "torax" field.
  double? _torax;
  double get torax => _torax ?? 0.0;
  bool hasTorax() => _torax != null;

  // "braEsquerdo" field.
  double? _braEsquerdo;
  double get braEsquerdo => _braEsquerdo ?? 0.0;
  bool hasBraEsquerdo() => _braEsquerdo != null;

  // "braDireito" field.
  double? _braDireito;
  double get braDireito => _braDireito ?? 0.0;
  bool hasBraDireito() => _braDireito != null;

  // "cintura" field.
  double? _cintura;
  double get cintura => _cintura ?? 0.0;
  bool hasCintura() => _cintura != null;

  // "femur" field.
  double? _femur;
  double get femur => _femur ?? 0.0;
  bool hasFemur() => _femur != null;

  // "quadril" field.
  double? _quadril;
  double get quadril => _quadril ?? 0.0;
  bool hasQuadril() => _quadril != null;

  // "coxasMedias" field.
  double? _coxasMedias;
  double get coxasMedias => _coxasMedias ?? 0.0;
  bool hasCoxasMedias() => _coxasMedias != null;

  // "panturrilhas" field.
  double? _panturrilhas;
  double get panturrilhas => _panturrilhas ?? 0.0;
  bool hasPanturrilhas() => _panturrilhas != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "umero" field.
  double? _umero;
  double get umero => _umero ?? 0.0;
  bool hasUmero() => _umero != null;

  void _initializeFields() {
    _torax = castToType<double>(snapshotData['torax']);
    _braEsquerdo = castToType<double>(snapshotData['braEsquerdo']);
    _braDireito = castToType<double>(snapshotData['braDireito']);
    _cintura = castToType<double>(snapshotData['cintura']);
    _femur = castToType<double>(snapshotData['femur']);
    _quadril = castToType<double>(snapshotData['quadril']);
    _coxasMedias = castToType<double>(snapshotData['coxasMedias']);
    _panturrilhas = castToType<double>(snapshotData['panturrilhas']);
    _title = snapshotData['title'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _userID = snapshotData['userID'] as DocumentReference?;
    _umero = castToType<double>(snapshotData['umero']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('perimetros');

  static Stream<PerimetrosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PerimetrosRecord.fromSnapshot(s));

  static Future<PerimetrosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PerimetrosRecord.fromSnapshot(s));

  static PerimetrosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PerimetrosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PerimetrosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PerimetrosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PerimetrosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PerimetrosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPerimetrosRecordData({
  double? torax,
  double? braEsquerdo,
  double? braDireito,
  double? cintura,
  double? femur,
  double? quadril,
  double? coxasMedias,
  double? panturrilhas,
  String? title,
  DateTime? timestamp,
  DocumentReference? userID,
  double? umero,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'torax': torax,
      'braEsquerdo': braEsquerdo,
      'braDireito': braDireito,
      'cintura': cintura,
      'femur': femur,
      'quadril': quadril,
      'coxasMedias': coxasMedias,
      'panturrilhas': panturrilhas,
      'title': title,
      'timestamp': timestamp,
      'userID': userID,
      'umero': umero,
    }.withoutNulls,
  );

  return firestoreData;
}

class PerimetrosRecordDocumentEquality implements Equality<PerimetrosRecord> {
  const PerimetrosRecordDocumentEquality();

  @override
  bool equals(PerimetrosRecord? e1, PerimetrosRecord? e2) {
    return e1?.torax == e2?.torax &&
        e1?.braEsquerdo == e2?.braEsquerdo &&
        e1?.braDireito == e2?.braDireito &&
        e1?.cintura == e2?.cintura &&
        e1?.femur == e2?.femur &&
        e1?.quadril == e2?.quadril &&
        e1?.coxasMedias == e2?.coxasMedias &&
        e1?.panturrilhas == e2?.panturrilhas &&
        e1?.title == e2?.title &&
        e1?.timestamp == e2?.timestamp &&
        e1?.userID == e2?.userID &&
        e1?.umero == e2?.umero;
  }

  @override
  int hash(PerimetrosRecord? e) => const ListEquality().hash([
        e?.torax,
        e?.braEsquerdo,
        e?.braDireito,
        e?.cintura,
        e?.femur,
        e?.quadril,
        e?.coxasMedias,
        e?.panturrilhas,
        e?.title,
        e?.timestamp,
        e?.userID,
        e?.umero
      ]);

  @override
  bool isValidKey(Object? o) => o is PerimetrosRecord;
}
