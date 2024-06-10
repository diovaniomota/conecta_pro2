import '/flutter_flow/flutter_flow_util.dart';
import 'tela_depois_do_pagamento_widget.dart' show TelaDepoisDoPagamentoWidget;
import 'package:flutter/material.dart';

class TelaDepoisDoPagamentoModel
    extends FlutterFlowModel<TelaDepoisDoPagamentoWidget> {
  ///  Local state fields for this page.

  int contadorAgrupamento = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
