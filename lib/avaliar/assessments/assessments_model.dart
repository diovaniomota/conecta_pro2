import '/flutter_flow/flutter_flow_util.dart';
import 'assessments_widget.dart' show AssessmentsWidget;
import 'package:flutter/material.dart';

class AssessmentsModel extends FlutterFlowModel<AssessmentsWidget> {
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
