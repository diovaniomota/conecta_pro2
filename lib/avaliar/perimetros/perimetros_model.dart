import '/flutter_flow/flutter_flow_util.dart';
import 'perimetros_widget.dart' show PerimetrosWidget;
import 'package:flutter/material.dart';

class PerimetrosModel extends FlutterFlowModel<PerimetrosWidget> {
  ///  Local state fields for this page.

  int contadorAgrupamento = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for umero widget.
  FocusNode? umeroFocusNode;
  TextEditingController? umeroTextController;
  String? Function(BuildContext, String?)? umeroTextControllerValidator;
  // State field(s) for Torax widget.
  FocusNode? toraxFocusNode;
  TextEditingController? toraxTextController;
  String? Function(BuildContext, String?)? toraxTextControllerValidator;
  // State field(s) for Bracoesquerdo widget.
  FocusNode? bracoesquerdoFocusNode;
  TextEditingController? bracoesquerdoTextController;
  String? Function(BuildContext, String?)? bracoesquerdoTextControllerValidator;
  // State field(s) for Bracodireito widget.
  FocusNode? bracodireitoFocusNode;
  TextEditingController? bracodireitoTextController;
  String? Function(BuildContext, String?)? bracodireitoTextControllerValidator;
  // State field(s) for Cintura widget.
  FocusNode? cinturaFocusNode;
  TextEditingController? cinturaTextController;
  String? Function(BuildContext, String?)? cinturaTextControllerValidator;
  // State field(s) for Femur widget.
  FocusNode? femurFocusNode;
  TextEditingController? femurTextController;
  String? Function(BuildContext, String?)? femurTextControllerValidator;
  // State field(s) for Quadril widget.
  FocusNode? quadrilFocusNode;
  TextEditingController? quadrilTextController;
  String? Function(BuildContext, String?)? quadrilTextControllerValidator;
  // State field(s) for Coxasmdias widget.
  FocusNode? coxasmdiasFocusNode;
  TextEditingController? coxasmdiasTextController;
  String? Function(BuildContext, String?)? coxasmdiasTextControllerValidator;
  // State field(s) for Panturrilhas widget.
  FocusNode? panturrilhasFocusNode;
  TextEditingController? panturrilhasTextController;
  String? Function(BuildContext, String?)? panturrilhasTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    umeroFocusNode?.dispose();
    umeroTextController?.dispose();

    toraxFocusNode?.dispose();
    toraxTextController?.dispose();

    bracoesquerdoFocusNode?.dispose();
    bracoesquerdoTextController?.dispose();

    bracodireitoFocusNode?.dispose();
    bracodireitoTextController?.dispose();

    cinturaFocusNode?.dispose();
    cinturaTextController?.dispose();

    femurFocusNode?.dispose();
    femurTextController?.dispose();

    quadrilFocusNode?.dispose();
    quadrilTextController?.dispose();

    coxasmdiasFocusNode?.dispose();
    coxasmdiasTextController?.dispose();

    panturrilhasFocusNode?.dispose();
    panturrilhasTextController?.dispose();
  }
}
