import '/flutter_flow/flutter_flow_util.dart';
import 'ver_anamnese_widget.dart' show VerAnamneseWidget;
import 'package:flutter/material.dart';

class VerAnamneseModel extends FlutterFlowModel<VerAnamneseWidget> {
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
