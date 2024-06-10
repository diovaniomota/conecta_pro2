import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ComposCorporalRecord extends FirestoreRecord {
  ComposCorporalRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "biotipo" field.
  String? _biotipo;
  String get biotipo => _biotipo ?? '';
  bool hasBiotipo() => _biotipo != null;

  // "peso" field.
  double? _peso;
  double get peso => _peso ?? 0.0;
  bool hasPeso() => _peso != null;

  // "altura" field.
  double? _altura;
  double get altura => _altura ?? 0.0;
  bool hasAltura() => _altura != null;

  // "IMC" field.
  double? _imc;
  double get imc => _imc ?? 0.0;
  bool hasImc() => _imc != null;

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

  // "dobraTriciptal" field.
  double? _dobraTriciptal;
  double get dobraTriciptal => _dobraTriciptal ?? 0.0;
  bool hasDobraTriciptal() => _dobraTriciptal != null;

  // "dobraSubscapular" field.
  double? _dobraSubscapular;
  double get dobraSubscapular => _dobraSubscapular ?? 0.0;
  bool hasDobraSubscapular() => _dobraSubscapular != null;

  // "dobraBiciptal" field.
  double? _dobraBiciptal;
  double get dobraBiciptal => _dobraBiciptal ?? 0.0;
  bool hasDobraBiciptal() => _dobraBiciptal != null;

  // "dobraAxilar" field.
  double? _dobraAxilar;
  double get dobraAxilar => _dobraAxilar ?? 0.0;
  bool hasDobraAxilar() => _dobraAxilar != null;

  // "dobraIlaca" field.
  double? _dobraIlaca;
  double get dobraIlaca => _dobraIlaca ?? 0.0;
  bool hasDobraIlaca() => _dobraIlaca != null;

  // "dobrasupraespinhal" field.
  double? _dobrasupraespinhal;
  double get dobrasupraespinhal => _dobrasupraespinhal ?? 0.0;
  bool hasDobrasupraespinhal() => _dobrasupraespinhal != null;

  // "dobraAbdominal" field.
  double? _dobraAbdominal;
  double get dobraAbdominal => _dobraAbdominal ?? 0.0;
  bool hasDobraAbdominal() => _dobraAbdominal != null;

  // "dobradacoxa" field.
  double? _dobradacoxa;
  double get dobradacoxa => _dobradacoxa ?? 0.0;
  bool hasDobradacoxa() => _dobradacoxa != null;

  // "dobradapanturrilha" field.
  double? _dobradapanturrilha;
  double get dobradapanturrilha => _dobradapanturrilha ?? 0.0;
  bool hasDobradapanturrilha() => _dobradapanturrilha != null;

  void _initializeFields() {
    _biotipo = snapshotData['biotipo'] as String?;
    _peso = castToType<double>(snapshotData['peso']);
    _altura = castToType<double>(snapshotData['altura']);
    _imc = castToType<double>(snapshotData['IMC']);
    _title = snapshotData['title'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _userID = snapshotData['userID'] as DocumentReference?;
    _dobraTriciptal = castToType<double>(snapshotData['dobraTriciptal']);
    _dobraSubscapular = castToType<double>(snapshotData['dobraSubscapular']);
    _dobraBiciptal = castToType<double>(snapshotData['dobraBiciptal']);
    _dobraAxilar = castToType<double>(snapshotData['dobraAxilar']);
    _dobraIlaca = castToType<double>(snapshotData['dobraIlaca']);
    _dobrasupraespinhal =
        castToType<double>(snapshotData['dobrasupraespinhal']);
    _dobraAbdominal = castToType<double>(snapshotData['dobraAbdominal']);
    _dobradacoxa = castToType<double>(snapshotData['dobradacoxa']);
    _dobradapanturrilha =
        castToType<double>(snapshotData['dobradapanturrilha']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('composCorporal');

  static Stream<ComposCorporalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ComposCorporalRecord.fromSnapshot(s));

  static Future<ComposCorporalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ComposCorporalRecord.fromSnapshot(s));

  static ComposCorporalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ComposCorporalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ComposCorporalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ComposCorporalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ComposCorporalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ComposCorporalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createComposCorporalRecordData({
  String? biotipo,
  double? peso,
  double? altura,
  double? imc,
  String? title,
  DateTime? timestamp,
  DocumentReference? userID,
  double? dobraTriciptal,
  double? dobraSubscapular,
  double? dobraBiciptal,
  double? dobraAxilar,
  double? dobraIlaca,
  double? dobrasupraespinhal,
  double? dobraAbdominal,
  double? dobradacoxa,
  double? dobradapanturrilha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'biotipo': biotipo,
      'peso': peso,
      'altura': altura,
      'IMC': imc,
      'title': title,
      'timestamp': timestamp,
      'userID': userID,
      'dobraTriciptal': dobraTriciptal,
      'dobraSubscapular': dobraSubscapular,
      'dobraBiciptal': dobraBiciptal,
      'dobraAxilar': dobraAxilar,
      'dobraIlaca': dobraIlaca,
      'dobrasupraespinhal': dobrasupraespinhal,
      'dobraAbdominal': dobraAbdominal,
      'dobradacoxa': dobradacoxa,
      'dobradapanturrilha': dobradapanturrilha,
    }.withoutNulls,
  );

  return firestoreData;
}

class ComposCorporalRecordDocumentEquality
    implements Equality<ComposCorporalRecord> {
  const ComposCorporalRecordDocumentEquality();

  @override
  bool equals(ComposCorporalRecord? e1, ComposCorporalRecord? e2) {
    return e1?.biotipo == e2?.biotipo &&
        e1?.peso == e2?.peso &&
        e1?.altura == e2?.altura &&
        e1?.imc == e2?.imc &&
        e1?.title == e2?.title &&
        e1?.timestamp == e2?.timestamp &&
        e1?.userID == e2?.userID &&
        e1?.dobraTriciptal == e2?.dobraTriciptal &&
        e1?.dobraSubscapular == e2?.dobraSubscapular &&
        e1?.dobraBiciptal == e2?.dobraBiciptal &&
        e1?.dobraAxilar == e2?.dobraAxilar &&
        e1?.dobraIlaca == e2?.dobraIlaca &&
        e1?.dobrasupraespinhal == e2?.dobrasupraespinhal &&
        e1?.dobraAbdominal == e2?.dobraAbdominal &&
        e1?.dobradacoxa == e2?.dobradacoxa &&
        e1?.dobradapanturrilha == e2?.dobradapanturrilha;
  }

  @override
  int hash(ComposCorporalRecord? e) => const ListEquality().hash([
        e?.biotipo,
        e?.peso,
        e?.altura,
        e?.imc,
        e?.title,
        e?.timestamp,
        e?.userID,
        e?.dobraTriciptal,
        e?.dobraSubscapular,
        e?.dobraBiciptal,
        e?.dobraAxilar,
        e?.dobraIlaca,
        e?.dobrasupraespinhal,
        e?.dobraAbdominal,
        e?.dobradacoxa,
        e?.dobradapanturrilha
      ]);

  @override
  bool isValidKey(Object? o) => o is ComposCorporalRecord;
}
