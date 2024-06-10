import '/flutter_flow/flutter_flow_util.dart';
import 'assinatura_aluno_widget.dart' show AssinaturaAlunoWidget;
import 'package:flutter/material.dart';

class AssinaturaAlunoModel extends FlutterFlowModel<AssinaturaAlunoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
