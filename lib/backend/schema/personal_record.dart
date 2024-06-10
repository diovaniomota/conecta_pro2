import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class PersonalRecord extends FirestoreRecord {
  PersonalRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "especialidade" field.
  String? _especialidade;
  String get especialidade => _especialidade ?? '';
  bool hasEspecialidade() => _especialidade != null;

  void _initializeFields() {
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _especialidade = snapshotData['especialidade'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('personal');

  static Stream<PersonalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PersonalRecord.fromSnapshot(s));

  static Future<PersonalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PersonalRecord.fromSnapshot(s));

  static PersonalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PersonalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PersonalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PersonalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PersonalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PersonalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPersonalRecordData({
  DocumentReference? usuario,
  String? especialidade,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario': usuario,
      'especialidade': especialidade,
    }.withoutNulls,
  );

  return firestoreData;
}

class PersonalRecordDocumentEquality implements Equality<PersonalRecord> {
  const PersonalRecordDocumentEquality();

  @override
  bool equals(PersonalRecord? e1, PersonalRecord? e2) {
    return e1?.usuario == e2?.usuario && e1?.especialidade == e2?.especialidade;
  }

  @override
  int hash(PersonalRecord? e) =>
      const ListEquality().hash([e?.usuario, e?.especialidade]);

  @override
  bool isValidKey(Object? o) => o is PersonalRecord;
}
