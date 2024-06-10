import '/flutter_flow/flutter_flow_util.dart';
import 'ver_perimetros_widget.dart' show VerPerimetrosWidget;
import 'package:flutter/material.dart';

class VerPerimetrosModel extends FlutterFlowModel<VerPerimetrosWidget> {
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
