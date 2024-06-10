import '/flutter_flow/flutter_flow_util.dart';
import 'vercompos_corporal_widget.dart' show VercomposCorporalWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class VercomposCorporalModel extends FlutterFlowModel<VercomposCorporalWidget> {
  ///  Local state fields for this page.

  int contadorAgrupamento = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for mesomorfo widget.
  bool? mesomorfoValue;
  // State field(s) for endomorfo widget.
  bool? endomorfoValue;
  // State field(s) for ectomorfo widget.
  bool? ectomorfoValue;
  // State field(s) for Peso widget.
  FocusNode? pesoFocusNode;
  TextEditingController? pesoTextController;
  String? Function(BuildContext, String?)? pesoTextControllerValidator;
  // State field(s) for Altura widget.
  FocusNode? alturaFocusNode1;
  TextEditingController? alturaTextController1;
  final alturaMask1 = MaskTextInputFormatter(mask: '#.##');
  String? Function(BuildContext, String?)? alturaTextController1Validator;
  // State field(s) for Altura widget.
  FocusNode? alturaFocusNode2;
  TextEditingController? alturaTextController2;
  final alturaMask2 = MaskTextInputFormatter(mask: '#.##');
  String? Function(BuildContext, String?)? alturaTextController2Validator;
  // Stores action output result for [Custom Action - imc] action in Button widget.
  double? outputIMC;
  // Stores action output result for [Custom Action - pesoIdeal] action in Button widget.
  double? pesoIdeal;
  // Stores action output result for [Custom Action - percentualGordura1] action in Button widget.
  double? percentualGordura;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    pesoFocusNode?.dispose();
    pesoTextController?.dispose();

    alturaFocusNode1?.dispose();
    alturaTextController1?.dispose();

    alturaFocusNode2?.dispose();
    alturaTextController2?.dispose();
  }
}
