import '/flutter_flow/flutter_flow_util.dart';
import 'avaliar_fotos_widget.dart' show AvaliarFotosWidget;
import 'package:flutter/material.dart';

class AvaliarFotosModel extends FlutterFlowModel<AvaliarFotosWidget> {
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
