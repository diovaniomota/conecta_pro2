import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class PlaylistTreinosRecord extends FirestoreRecord {
  PlaylistTreinosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "personal" field.
  DocumentReference? _personal;
  DocumentReference? get personal => _personal;
  bool hasPersonal() => _personal != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "objetivo" field.
  String? _objetivo;
  String get objetivo => _objetivo ?? '';
  bool hasObjetivo() => _objetivo != null;

  // "treinos" field.
  DocumentReference? _treinos;
  DocumentReference? get treinos => _treinos;
  bool hasTreinos() => _treinos != null;

  void _initializeFields() {
    _personal = snapshotData['personal'] as DocumentReference?;
    _titulo = snapshotData['titulo'] as String?;
    _objetivo = snapshotData['objetivo'] as String?;
    _treinos = snapshotData['treinos'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('playlistTreinos');

  static Stream<PlaylistTreinosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlaylistTreinosRecord.fromSnapshot(s));

  static Future<PlaylistTreinosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlaylistTreinosRecord.fromSnapshot(s));

  static PlaylistTreinosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PlaylistTreinosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlaylistTreinosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlaylistTreinosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlaylistTreinosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlaylistTreinosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlaylistTreinosRecordData({
  DocumentReference? personal,
  String? titulo,
  String? objetivo,
  DocumentReference? treinos,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'personal': personal,
      'titulo': titulo,
      'objetivo': objetivo,
      'treinos': treinos,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlaylistTreinosRecordDocumentEquality
    implements Equality<PlaylistTreinosRecord> {
  const PlaylistTreinosRecordDocumentEquality();

  @override
  bool equals(PlaylistTreinosRecord? e1, PlaylistTreinosRecord? e2) {
    return e1?.personal == e2?.personal &&
        e1?.titulo == e2?.titulo &&
        e1?.objetivo == e2?.objetivo &&
        e1?.treinos == e2?.treinos;
  }

  @override
  int hash(PlaylistTreinosRecord? e) => const ListEquality()
      .hash([e?.personal, e?.titulo, e?.objetivo, e?.treinos]);

  @override
  bool isValidKey(Object? o) => o is PlaylistTreinosRecord;
}
