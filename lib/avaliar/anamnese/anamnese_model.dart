import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'anamnese_widget.dart' show AnamneseWidget;
import 'package:flutter/material.dart';

class AnamneseModel extends FlutterFlowModel<AnamneseWidget> {
  ///  Local state fields for this page.

  int contadorAgrupamento = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Foco widget.
  FocusNode? focoFocusNode;
  TextEditingController? focoTextController;
  String? Function(BuildContext, String?)? focoTextControllerValidator;
  // State field(s) for idade widget.
  FocusNode? idadeFocusNode;
  TextEditingController? idadeTextController;
  String? Function(BuildContext, String?)? idadeTextControllerValidator;
  // State field(s) for Esporte widget.
  FocusNode? esporteFocusNode;
  TextEditingController? esporteTextController;
  String? Function(BuildContext, String?)? esporteTextControllerValidator;
  // State field(s) for EsporteTempo widget.
  FocusNode? esporteTempoFocusNode;
  TextEditingController? esporteTempoTextController;
  String? Function(BuildContext, String?)? esporteTempoTextControllerValidator;
  // State field(s) for temposempraticar widget.
  FocusNode? temposempraticarFocusNode;
  TextEditingController? temposempraticarTextController;
  String? Function(BuildContext, String?)?
      temposempraticarTextControllerValidator;
  // State field(s) for fumante widget.
  FormFieldController<String>? fumanteValueController;
  // State field(s) for colesterolAlto widget.
  FormFieldController<String>? colesterolAltoValueController;
  // State field(s) for dorCostas widget.
  FormFieldController<String>? dorCostasValueController;
  // State field(s) for dornascostas widget.
  FocusNode? dornascostasFocusNode;
  TextEditingController? dornascostasTextController;
  String? Function(BuildContext, String?)? dornascostasTextControllerValidator;
  // State field(s) for disfOrtopedica widget.
  FormFieldController<String>? disfOrtopedicaValueController;
  // State field(s) for disfuColuna widget.
  FocusNode? disfuColunaFocusNode;
  TextEditingController? disfuColunaTextController;
  String? Function(BuildContext, String?)? disfuColunaTextControllerValidator;
  // State field(s) for patologia widget.
  FormFieldController<String>? patologiaValueController;
  // State field(s) for patologia widget.
  FocusNode? patologiaFocusNode;
  TextEditingController? patologiaTextController;
  String? Function(BuildContext, String?)? patologiaTextControllerValidator;
  // State field(s) for limiteMovimento widget.
  FormFieldController<String>? limiteMovimentoValueController;
  // State field(s) for limiteMovimento widget.
  FocusNode? limiteMovimentoFocusNode;
  TextEditingController? limiteMovimentoTextController;
  String? Function(BuildContext, String?)?
      limiteMovimentoTextControllerValidator;
  // State field(s) for usaRemedio widget.
  FormFieldController<String>? usaRemedioValueController;
  // State field(s) for remedioControlado widget.
  FocusNode? remedioControladoFocusNode;
  TextEditingController? remedioControladoTextController;
  String? Function(BuildContext, String?)?
      remedioControladoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    focoFocusNode?.dispose();
    focoTextController?.dispose();

    idadeFocusNode?.dispose();
    idadeTextController?.dispose();

    esporteFocusNode?.dispose();
    esporteTextController?.dispose();

    esporteTempoFocusNode?.dispose();
    esporteTempoTextController?.dispose();

    temposempraticarFocusNode?.dispose();
    temposempraticarTextController?.dispose();

    dornascostasFocusNode?.dispose();
    dornascostasTextController?.dispose();

    disfuColunaFocusNode?.dispose();
    disfuColunaTextController?.dispose();

    patologiaFocusNode?.dispose();
    patologiaTextController?.dispose();

    limiteMovimentoFocusNode?.dispose();
    limiteMovimentoTextController?.dispose();

    remedioControladoFocusNode?.dispose();
    remedioControladoTextController?.dispose();
  }

  /// Additional helper methods.
  String? get fumanteValue => fumanteValueController?.value;
  String? get colesterolAltoValue => colesterolAltoValueController?.value;
  String? get dorCostasValue => dorCostasValueController?.value;
  String? get disfOrtopedicaValue => disfOrtopedicaValueController?.value;
  String? get patologiaValue => patologiaValueController?.value;
  String? get limiteMovimentoValue => limiteMovimentoValueController?.value;
  String? get usaRemedioValue => usaRemedioValueController?.value;
}
