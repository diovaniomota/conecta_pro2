import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class AvaliarFotosRecord extends FirestoreRecord {
  AvaliarFotosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "fotos" field.
  List<String>? _fotos;
  List<String> get fotos => _fotos ?? const [];
  bool hasFotos() => _fotos != null;

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "timeStamp" field.
  DateTime? _timeStamp;
  DateTime? get timeStamp => _timeStamp;
  bool hasTimeStamp() => _timeStamp != null;

  void _initializeFields() {
    _fotos = getDataList(snapshotData['fotos']);
    _userID = snapshotData['userID'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _timeStamp = snapshotData['timeStamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('avaliarFotos');

  static Stream<AvaliarFotosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AvaliarFotosRecord.fromSnapshot(s));

  static Future<AvaliarFotosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AvaliarFotosRecord.fromSnapshot(s));

  static AvaliarFotosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AvaliarFotosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AvaliarFotosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AvaliarFotosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AvaliarFotosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AvaliarFotosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAvaliarFotosRecordData({
  DocumentReference? userID,
  String? title,
  DateTime? timeStamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userID': userID,
      'title': title,
      'timeStamp': timeStamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class AvaliarFotosRecordDocumentEquality
    implements Equality<AvaliarFotosRecord> {
  const AvaliarFotosRecordDocumentEquality();

  @override
  bool equals(AvaliarFotosRecord? e1, AvaliarFotosRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.fotos, e2?.fotos) &&
        e1?.userID == e2?.userID &&
        e1?.title == e2?.title &&
        e1?.timeStamp == e2?.timeStamp;
  }

  @override
  int hash(AvaliarFotosRecord? e) =>
      const ListEquality().hash([e?.fotos, e?.userID, e?.title, e?.timeStamp]);

  @override
  bool isValidKey(Object? o) => o is AvaliarFotosRecord;
}
