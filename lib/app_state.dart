import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _HoraUltimaMensagem = prefs.containsKey('ff_HoraUltimaMensagem')
          ? DateTime.fromMillisecondsSinceEpoch(
              prefs.getInt('ff_HoraUltimaMensagem')!)
          : _HoraUltimaMensagem;
    });
    _safeInit(() {
      _pushNotifications =
          prefs.getBool('ff_pushNotifications') ?? _pushNotifications;
    });
    _safeInit(() {
      _curtida = prefs.getBool('ff_curtida') ?? _curtida;
    });
    _safeInit(() {
      _perimetros = prefs.getBool('ff_perimetros') ?? _perimetros;
    });
    _safeInit(() {
      _anamnese = prefs.getBool('ff_anamnese') ?? _anamnese;
    });
    _safeInit(() {
      _composicaoCoporporal =
          prefs.getBool('ff_composicaoCoporporal') ?? _composicaoCoporporal;
    });
    _safeInit(() {
      _fotosAvaliacao = prefs.getBool('ff_fotosAvaliacao') ?? _fotosAvaliacao;
    });
    _safeInit(() {
      _optidaoFisica = prefs.getBool('ff_optidaoFisica') ?? _optidaoFisica;
    });
    _safeInit(() {
      _mesomorfo = prefs.getBool('ff_mesomorfo') ?? _mesomorfo;
    });
    _safeInit(() {
      _endomorfo = prefs.getBool('ff_endomorfo') ?? _endomorfo;
    });
    _safeInit(() {
      _eotomorfo = prefs.getBool('ff_eotomorfo') ?? _eotomorfo;
    });
    _safeInit(() {
      _peso = prefs.getDouble('ff_peso') ?? _peso;
    });
    _safeInit(() {
      _altura = prefs.getDouble('ff_altura') ?? _altura;
    });
    _safeInit(() {
      _salvo = prefs.getBool('ff_salvo') ?? _salvo;
    });
    _safeInit(() {
      _idade = prefs.getInt('ff_idade') ?? _idade;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  DateTime? _HoraUltimaMensagem;
  DateTime? get HoraUltimaMensagem => _HoraUltimaMensagem;
  set HoraUltimaMensagem(DateTime? value) {
    _HoraUltimaMensagem = value;
    value != null
        ? prefs.setInt('ff_HoraUltimaMensagem', value.millisecondsSinceEpoch)
        : prefs.remove('ff_HoraUltimaMensagem');
  }

  bool _pushNotifications = true;
  bool get pushNotifications => _pushNotifications;
  set pushNotifications(bool value) {
    _pushNotifications = value;
    prefs.setBool('ff_pushNotifications', value);
  }

  bool _curtida = true;
  bool get curtida => _curtida;
  set curtida(bool value) {
    _curtida = value;
    prefs.setBool('ff_curtida', value);
  }

  bool _menuAberto = false;
  bool get menuAberto => _menuAberto;
  set menuAberto(bool value) {
    _menuAberto = value;
  }

  bool _filtroCidade = false;
  bool get filtroCidade => _filtroCidade;
  set filtroCidade(bool value) {
    _filtroCidade = value;
  }

  bool _postComFoto = false;
  bool get postComFoto => _postComFoto;
  set postComFoto(bool value) {
    _postComFoto = value;
  }

  bool _perimetros = false;
  bool get perimetros => _perimetros;
  set perimetros(bool value) {
    _perimetros = value;
    prefs.setBool('ff_perimetros', value);
  }

  bool _anamnese = false;
  bool get anamnese => _anamnese;
  set anamnese(bool value) {
    _anamnese = value;
    prefs.setBool('ff_anamnese', value);
  }

  bool _composicaoCoporporal = false;
  bool get composicaoCoporporal => _composicaoCoporporal;
  set composicaoCoporporal(bool value) {
    _composicaoCoporporal = value;
    prefs.setBool('ff_composicaoCoporporal', value);
  }

  bool _fotosAvaliacao = false;
  bool get fotosAvaliacao => _fotosAvaliacao;
  set fotosAvaliacao(bool value) {
    _fotosAvaliacao = value;
    prefs.setBool('ff_fotosAvaliacao', value);
  }

  bool _optidaoFisica = false;
  bool get optidaoFisica => _optidaoFisica;
  set optidaoFisica(bool value) {
    _optidaoFisica = value;
    prefs.setBool('ff_optidaoFisica', value);
  }

  bool _mesomorfo = false;
  bool get mesomorfo => _mesomorfo;
  set mesomorfo(bool value) {
    _mesomorfo = value;
    prefs.setBool('ff_mesomorfo', value);
  }

  bool _endomorfo = false;
  bool get endomorfo => _endomorfo;
  set endomorfo(bool value) {
    _endomorfo = value;
    prefs.setBool('ff_endomorfo', value);
  }

  bool _eotomorfo = false;
  bool get eotomorfo => _eotomorfo;
  set eotomorfo(bool value) {
    _eotomorfo = value;
    prefs.setBool('ff_eotomorfo', value);
  }

  double _peso = 0.0;
  double get peso => _peso;
  set peso(double value) {
    _peso = value;
    prefs.setDouble('ff_peso', value);
  }

  double _altura = 0.0;
  double get altura => _altura;
  set altura(double value) {
    _altura = value;
    prefs.setDouble('ff_altura', value);
  }

  int _satisfacaoCorpo = 0;
  int get satisfacaoCorpo => _satisfacaoCorpo;
  set satisfacaoCorpo(int value) {
    _satisfacaoCorpo = value;
  }

  double _DobraTricipital = 0.0;
  double get DobraTricipital => _DobraTricipital;
  set DobraTricipital(double value) {
    _DobraTricipital = value;
  }

  double _DobraSubescapular = 0.0;
  double get DobraSubescapular => _DobraSubescapular;
  set DobraSubescapular(double value) {
    _DobraSubescapular = value;
  }

  double _DobraBiciptal = 0.0;
  double get DobraBiciptal => _DobraBiciptal;
  set DobraBiciptal(double value) {
    _DobraBiciptal = value;
  }

  double _DobraAxilar = 0.0;
  double get DobraAxilar => _DobraAxilar;
  set DobraAxilar(double value) {
    _DobraAxilar = value;
  }

  double _DobraIliaca = 0.0;
  double get DobraIliaca => _DobraIliaca;
  set DobraIliaca(double value) {
    _DobraIliaca = value;
  }

  double _DobraSupraespinhal = 0.0;
  double get DobraSupraespinhal => _DobraSupraespinhal;
  set DobraSupraespinhal(double value) {
    _DobraSupraespinhal = value;
  }

  double _DobraAbdominal = 0.0;
  double get DobraAbdominal => _DobraAbdominal;
  set DobraAbdominal(double value) {
    _DobraAbdominal = value;
  }

  double _DobraDaCoxa = 0.0;
  double get DobraDaCoxa => _DobraDaCoxa;
  set DobraDaCoxa(double value) {
    _DobraDaCoxa = value;
  }

  double _DobraDaPanturrilha = 0.0;
  double get DobraDaPanturrilha => _DobraDaPanturrilha;
  set DobraDaPanturrilha(double value) {
    _DobraDaPanturrilha = value;
  }

  double _Umero = 0.0;
  double get Umero => _Umero;
  set Umero(double value) {
    _Umero = value;
  }

  double _Torax = 0.0;
  double get Torax => _Torax;
  set Torax(double value) {
    _Torax = value;
  }

  double _BracoEsquerdo = 0.0;
  double get BracoEsquerdo => _BracoEsquerdo;
  set BracoEsquerdo(double value) {
    _BracoEsquerdo = value;
  }

  double _BracoDireito = 0.0;
  double get BracoDireito => _BracoDireito;
  set BracoDireito(double value) {
    _BracoDireito = value;
  }

  double _Cintura = 0.0;
  double get Cintura => _Cintura;
  set Cintura(double value) {
    _Cintura = value;
  }

  double _Femur = 0.0;
  double get Femur => _Femur;
  set Femur(double value) {
    _Femur = value;
  }

  double _Quadril = 0.0;
  double get Quadril => _Quadril;
  set Quadril(double value) {
    _Quadril = value;
  }

  double _CoxasMedias = 0.0;
  double get CoxasMedias => _CoxasMedias;
  set CoxasMedias(double value) {
    _CoxasMedias = value;
  }

  double _Panturrilhas = 0.0;
  double get Panturrilhas => _Panturrilhas;
  set Panturrilhas(double value) {
    _Panturrilhas = value;
  }

  bool _salvo = false;
  bool get salvo => _salvo;
  set salvo(bool value) {
    _salvo = value;
    prefs.setBool('ff_salvo', value);
  }

  int _idade = 0;
  int get idade => _idade;
  set idade(int value) {
    _idade = value;
    prefs.setInt('ff_idade', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
