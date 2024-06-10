import '/flutter_flow/flutter_flow_util.dart';
import 'compos_corporal_widget.dart' show ComposCorporalWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ComposCorporalModel extends FlutterFlowModel<ComposCorporalWidget> {
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
  // State field(s) for DobraTriciptal widget.
  FocusNode? dobraTriciptalFocusNode;
  TextEditingController? dobraTriciptalTextController;
  String? Function(BuildContext, String?)?
      dobraTriciptalTextControllerValidator;
  // State field(s) for DobraSubscapular widget.
  FocusNode? dobraSubscapularFocusNode;
  TextEditingController? dobraSubscapularTextController;
  String? Function(BuildContext, String?)?
      dobraSubscapularTextControllerValidator;
  // State field(s) for DobraBiciptal widget.
  FocusNode? dobraBiciptalFocusNode;
  TextEditingController? dobraBiciptalTextController;
  String? Function(BuildContext, String?)? dobraBiciptalTextControllerValidator;
  // State field(s) for DobraAxilar widget.
  FocusNode? dobraAxilarFocusNode;
  TextEditingController? dobraAxilarTextController;
  String? Function(BuildContext, String?)? dobraAxilarTextControllerValidator;
  // State field(s) for DobraIlaca widget.
  FocusNode? dobraIlacaFocusNode;
  TextEditingController? dobraIlacaTextController;
  String? Function(BuildContext, String?)? dobraIlacaTextControllerValidator;
  // State field(s) for Dobrasupraespinhal widget.
  FocusNode? dobrasupraespinhalFocusNode;
  TextEditingController? dobrasupraespinhalTextController;
  String? Function(BuildContext, String?)?
      dobrasupraespinhalTextControllerValidator;
  // State field(s) for DobraAbdominal widget.
  FocusNode? dobraAbdominalFocusNode;
  TextEditingController? dobraAbdominalTextController;
  String? Function(BuildContext, String?)?
      dobraAbdominalTextControllerValidator;
  // State field(s) for Dobradacoxa widget.
  FocusNode? dobradacoxaFocusNode;
  TextEditingController? dobradacoxaTextController;
  String? Function(BuildContext, String?)? dobradacoxaTextControllerValidator;
  // State field(s) for Dobradapanturrilha widget.
  FocusNode? dobradapanturrilhaFocusNode;
  TextEditingController? dobradapanturrilhaTextController;
  String? Function(BuildContext, String?)?
      dobradapanturrilhaTextControllerValidator;
  // State field(s) for Peso widget.
  FocusNode? pesoFocusNode;
  TextEditingController? pesoTextController;
  String? Function(BuildContext, String?)? pesoTextControllerValidator;
  // State field(s) for AlturaAtual widget.
  FocusNode? alturaAtualFocusNode;
  TextEditingController? alturaAtualTextController;
  final alturaAtualMask = MaskTextInputFormatter(mask: '#.##');
  String? Function(BuildContext, String?)? alturaAtualTextControllerValidator;
  // State field(s) for idadeAtual widget.
  FocusNode? idadeAtualFocusNode;
  TextEditingController? idadeAtualTextController;
  final idadeAtualMask = MaskTextInputFormatter(mask: '##');
  String? Function(BuildContext, String?)? idadeAtualTextControllerValidator;
  // Stores action output result for [Custom Action - imc] action in Button widget.
  double? outputIMC;
  // Stores action output result for [Custom Action - pesoIdeal] action in Button widget.
  double? pesoIdeal;
  // Stores action output result for [Custom Action - percentualGordura1] action in Button widget.
  double? percentualGordura1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    dobraTriciptalFocusNode?.dispose();
    dobraTriciptalTextController?.dispose();

    dobraSubscapularFocusNode?.dispose();
    dobraSubscapularTextController?.dispose();

    dobraBiciptalFocusNode?.dispose();
    dobraBiciptalTextController?.dispose();

    dobraAxilarFocusNode?.dispose();
    dobraAxilarTextController?.dispose();

    dobraIlacaFocusNode?.dispose();
    dobraIlacaTextController?.dispose();

    dobrasupraespinhalFocusNode?.dispose();
    dobrasupraespinhalTextController?.dispose();

    dobraAbdominalFocusNode?.dispose();
    dobraAbdominalTextController?.dispose();

    dobradacoxaFocusNode?.dispose();
    dobradacoxaTextController?.dispose();

    dobradapanturrilhaFocusNode?.dispose();
    dobradapanturrilhaTextController?.dispose();

    pesoFocusNode?.dispose();
    pesoTextController?.dispose();

    alturaAtualFocusNode?.dispose();
    alturaAtualTextController?.dispose();

    idadeAtualFocusNode?.dispose();
    idadeAtualTextController?.dispose();
  }
}
