import '/flutter_flow/flutter_flow_util.dart';
import 'avaliar_widget.dart' show AvaliarWidget;
import 'package:flutter/material.dart';

class AvaliarModel extends FlutterFlowModel<AvaliarWidget> {
  ///  Local state fields for this page.

  int contadorAgrupamento = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // State field(s) for Slider widget.
  double? sliderValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
