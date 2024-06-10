import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class FeedNoticiasRecord extends FirestoreRecord {
  FeedNoticiasRecord._(
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

  // "bloqueado" field.
  bool? _bloqueado;
  bool get bloqueado => _bloqueado ?? false;
  bool hasBloqueado() => _bloqueado != null;

  // "texto" field.
  String? _texto;
  String get texto => _texto ?? '';
  bool hasTexto() => _texto != null;

  // "imagemPost" field.
  String? _imagemPost;
  String get imagemPost => _imagemPost ?? '';
  bool hasImagemPost() => _imagemPost != null;

  // "foto" field.
  bool? _foto;
  bool get foto => _foto ?? false;
  bool hasFoto() => _foto != null;

  // "completo" field.
  bool? _completo;
  bool get completo => _completo ?? false;
  bool hasCompleto() => _completo != null;

  // "likes" field.
  List<DocumentReference>? _likes;
  List<DocumentReference> get likes => _likes ?? const [];
  bool hasLikes() => _likes != null;

  // "repost" field.
  List<DocumentReference>? _repost;
  List<DocumentReference> get repost => _repost ?? const [];
  bool hasRepost() => _repost != null;

  void _initializeFields() {
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _data = snapshotData['data'] as DateTime?;
    _bloqueado = snapshotData['bloqueado'] as bool?;
    _texto = snapshotData['texto'] as String?;
    _imagemPost = snapshotData['imagemPost'] as String?;
    _foto = snapshotData['foto'] as bool?;
    _completo = snapshotData['completo'] as bool?;
    _likes = getDataList(snapshotData['likes']);
    _repost = getDataList(snapshotData['repost']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('feedNoticias');

  static Stream<FeedNoticiasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FeedNoticiasRecord.fromSnapshot(s));

  static Future<FeedNoticiasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FeedNoticiasRecord.fromSnapshot(s));

  static FeedNoticiasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FeedNoticiasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FeedNoticiasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FeedNoticiasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FeedNoticiasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FeedNoticiasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFeedNoticiasRecordData({
  DocumentReference? usuario,
  DateTime? data,
  bool? bloqueado,
  String? texto,
  String? imagemPost,
  bool? foto,
  bool? completo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario': usuario,
      'data': data,
      'bloqueado': bloqueado,
      'texto': texto,
      'imagemPost': imagemPost,
      'foto': foto,
      'completo': completo,
    }.withoutNulls,
  );

  return firestoreData;
}

class FeedNoticiasRecordDocumentEquality
    implements Equality<FeedNoticiasRecord> {
  const FeedNoticiasRecordDocumentEquality();

  @override
  bool equals(FeedNoticiasRecord? e1, FeedNoticiasRecord? e2) {
    const listEquality = ListEquality();
    return e1?.usuario == e2?.usuario &&
        e1?.data == e2?.data &&
        e1?.bloqueado == e2?.bloqueado &&
        e1?.texto == e2?.texto &&
        e1?.imagemPost == e2?.imagemPost &&
        e1?.foto == e2?.foto &&
        e1?.completo == e2?.completo &&
        listEquality.equals(e1?.likes, e2?.likes) &&
        listEquality.equals(e1?.repost, e2?.repost);
  }

  @override
  int hash(FeedNoticiasRecord? e) => const ListEquality().hash([
        e?.usuario,
        e?.data,
        e?.bloqueado,
        e?.texto,
        e?.imagemPost,
        e?.foto,
        e?.completo,
        e?.likes,
        e?.repost
      ]);

  @override
  bool isValidKey(Object? o) => o is FeedNoticiasRecord;
}
