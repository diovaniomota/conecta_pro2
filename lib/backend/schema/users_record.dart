import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "isTreinador" field.
  bool? _isTreinador;
  bool get isTreinador => _isTreinador ?? false;
  bool hasIsTreinador() => _isTreinador != null;

  // "isAluno" field.
  bool? _isAluno;
  bool get isAluno => _isAluno ?? false;
  bool hasIsAluno() => _isAluno != null;

  // "idade" field.
  int? _idade;
  int get idade => _idade ?? 0;
  bool hasIdade() => _idade != null;

  // "peso" field.
  double? _peso;
  double get peso => _peso ?? 0.0;
  bool hasPeso() => _peso != null;

  // "objetivo" field.
  String? _objetivo;
  String get objetivo => _objetivo ?? '';
  bool hasObjetivo() => _objetivo != null;

  // "cadastroCompleto" field.
  bool? _cadastroCompleto;
  bool get cadastroCompleto => _cadastroCompleto ?? false;
  bool hasCadastroCompleto() => _cadastroCompleto != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  bool hasAtivo() => _ativo != null;

  // "sobrenome" field.
  String? _sobrenome;
  String get sobrenome => _sobrenome ?? '';
  bool hasSobrenome() => _sobrenome != null;

  // "CPF" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  bool hasCpf() => _cpf != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "seguidores" field.
  List<DocumentReference>? _seguidores;
  List<DocumentReference> get seguidores => _seguidores ?? const [];
  bool hasSeguidores() => _seguidores != null;

  // "seguindo" field.
  List<DocumentReference>? _seguindo;
  List<DocumentReference> get seguindo => _seguindo ?? const [];
  bool hasSeguindo() => _seguindo != null;

  // "logado" field.
  bool? _logado;
  bool get logado => _logado ?? false;
  bool hasLogado() => _logado != null;

  // "Alunos" field.
  List<DocumentReference>? _alunos;
  List<DocumentReference> get alunos => _alunos ?? const [];
  bool hasAlunos() => _alunos != null;

  // "personal" field.
  List<DocumentReference>? _personal;
  List<DocumentReference> get personal => _personal ?? const [];
  bool hasPersonal() => _personal != null;

  // "fotoPerfil" field.
  bool? _fotoPerfil;
  bool get fotoPerfil => _fotoPerfil ?? false;
  bool hasFotoPerfil() => _fotoPerfil != null;

  // "pergunta1" field.
  String? _pergunta1;
  String get pergunta1 => _pergunta1 ?? '';
  bool hasPergunta1() => _pergunta1 != null;

  // "pergunta2" field.
  String? _pergunta2;
  String get pergunta2 => _pergunta2 ?? '';
  bool hasPergunta2() => _pergunta2 != null;

  // "pergunta3" field.
  String? _pergunta3;
  String get pergunta3 => _pergunta3 ?? '';
  bool hasPergunta3() => _pergunta3 != null;

  // "pergunta4" field.
  String? _pergunta4;
  String get pergunta4 => _pergunta4 ?? '';
  bool hasPergunta4() => _pergunta4 != null;

  // "pergunta5" field.
  String? _pergunta5;
  String get pergunta5 => _pergunta5 ?? '';
  bool hasPergunta5() => _pergunta5 != null;

  // "pergunta6" field.
  String? _pergunta6;
  String get pergunta6 => _pergunta6 ?? '';
  bool hasPergunta6() => _pergunta6 != null;

  // "pergunta7" field.
  String? _pergunta7;
  String get pergunta7 => _pergunta7 ?? '';
  bool hasPergunta7() => _pergunta7 != null;

  // "stripe_cust_id" field.
  String? _stripeCustId;
  String get stripeCustId => _stripeCustId ?? '';
  bool hasStripeCustId() => _stripeCustId != null;

  // "satisfacaoCorpo" field.
  int? _satisfacaoCorpo;
  int get satisfacaoCorpo => _satisfacaoCorpo ?? 0;
  bool hasSatisfacaoCorpo() => _satisfacaoCorpo != null;

  // "satisCorpo" field.
  double? _satisCorpo;
  double get satisCorpo => _satisCorpo ?? 0.0;
  bool hasSatisCorpo() => _satisCorpo != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _isTreinador = snapshotData['isTreinador'] as bool?;
    _isAluno = snapshotData['isAluno'] as bool?;
    _idade = castToType<int>(snapshotData['idade']);
    _peso = castToType<double>(snapshotData['peso']);
    _objetivo = snapshotData['objetivo'] as String?;
    _cadastroCompleto = snapshotData['cadastroCompleto'] as bool?;
    _ativo = snapshotData['ativo'] as bool?;
    _sobrenome = snapshotData['sobrenome'] as String?;
    _cpf = snapshotData['CPF'] as String?;
    _cidade = snapshotData['cidade'] as String?;
    _seguidores = getDataList(snapshotData['seguidores']);
    _seguindo = getDataList(snapshotData['seguindo']);
    _logado = snapshotData['logado'] as bool?;
    _alunos = getDataList(snapshotData['Alunos']);
    _personal = getDataList(snapshotData['personal']);
    _fotoPerfil = snapshotData['fotoPerfil'] as bool?;
    _pergunta1 = snapshotData['pergunta1'] as String?;
    _pergunta2 = snapshotData['pergunta2'] as String?;
    _pergunta3 = snapshotData['pergunta3'] as String?;
    _pergunta4 = snapshotData['pergunta4'] as String?;
    _pergunta5 = snapshotData['pergunta5'] as String?;
    _pergunta6 = snapshotData['pergunta6'] as String?;
    _pergunta7 = snapshotData['pergunta7'] as String?;
    _stripeCustId = snapshotData['stripe_cust_id'] as String?;
    _satisfacaoCorpo = castToType<int>(snapshotData['satisfacaoCorpo']);
    _satisCorpo = castToType<double>(snapshotData['satisCorpo']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? isTreinador,
  bool? isAluno,
  int? idade,
  double? peso,
  String? objetivo,
  bool? cadastroCompleto,
  bool? ativo,
  String? sobrenome,
  String? cpf,
  String? cidade,
  bool? logado,
  bool? fotoPerfil,
  String? pergunta1,
  String? pergunta2,
  String? pergunta3,
  String? pergunta4,
  String? pergunta5,
  String? pergunta6,
  String? pergunta7,
  String? stripeCustId,
  int? satisfacaoCorpo,
  double? satisCorpo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'isTreinador': isTreinador,
      'isAluno': isAluno,
      'idade': idade,
      'peso': peso,
      'objetivo': objetivo,
      'cadastroCompleto': cadastroCompleto,
      'ativo': ativo,
      'sobrenome': sobrenome,
      'CPF': cpf,
      'cidade': cidade,
      'logado': logado,
      'fotoPerfil': fotoPerfil,
      'pergunta1': pergunta1,
      'pergunta2': pergunta2,
      'pergunta3': pergunta3,
      'pergunta4': pergunta4,
      'pergunta5': pergunta5,
      'pergunta6': pergunta6,
      'pergunta7': pergunta7,
      'stripe_cust_id': stripeCustId,
      'satisfacaoCorpo': satisfacaoCorpo,
      'satisCorpo': satisCorpo,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.isTreinador == e2?.isTreinador &&
        e1?.isAluno == e2?.isAluno &&
        e1?.idade == e2?.idade &&
        e1?.peso == e2?.peso &&
        e1?.objetivo == e2?.objetivo &&
        e1?.cadastroCompleto == e2?.cadastroCompleto &&
        e1?.ativo == e2?.ativo &&
        e1?.sobrenome == e2?.sobrenome &&
        e1?.cpf == e2?.cpf &&
        e1?.cidade == e2?.cidade &&
        listEquality.equals(e1?.seguidores, e2?.seguidores) &&
        listEquality.equals(e1?.seguindo, e2?.seguindo) &&
        e1?.logado == e2?.logado &&
        listEquality.equals(e1?.alunos, e2?.alunos) &&
        listEquality.equals(e1?.personal, e2?.personal) &&
        e1?.fotoPerfil == e2?.fotoPerfil &&
        e1?.pergunta1 == e2?.pergunta1 &&
        e1?.pergunta2 == e2?.pergunta2 &&
        e1?.pergunta3 == e2?.pergunta3 &&
        e1?.pergunta4 == e2?.pergunta4 &&
        e1?.pergunta5 == e2?.pergunta5 &&
        e1?.pergunta6 == e2?.pergunta6 &&
        e1?.pergunta7 == e2?.pergunta7 &&
        e1?.stripeCustId == e2?.stripeCustId &&
        e1?.satisfacaoCorpo == e2?.satisfacaoCorpo &&
        e1?.satisCorpo == e2?.satisCorpo;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.isTreinador,
        e?.isAluno,
        e?.idade,
        e?.peso,
        e?.objetivo,
        e?.cadastroCompleto,
        e?.ativo,
        e?.sobrenome,
        e?.cpf,
        e?.cidade,
        e?.seguidores,
        e?.seguindo,
        e?.logado,
        e?.alunos,
        e?.personal,
        e?.fotoPerfil,
        e?.pergunta1,
        e?.pergunta2,
        e?.pergunta3,
        e?.pergunta4,
        e?.pergunta5,
        e?.pergunta6,
        e?.pergunta7,
        e?.stripeCustId,
        e?.satisfacaoCorpo,
        e?.satisCorpo
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
