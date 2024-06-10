import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'prontidao_fisica_widget.dart' show ProntidaoFisicaWidget;
import 'package:flutter/material.dart';

class ProntidaoFisicaModel extends FlutterFlowModel<ProntidaoFisicaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Respota1 widget.
  FormFieldController<String>? respota1ValueController;
  // State field(s) for Respota2 widget.
  FormFieldController<String>? respota2ValueController;
  // State field(s) for Respota3 widget.
  FormFieldController<String>? respota3ValueController;
  // State field(s) for Respota4 widget.
  FormFieldController<String>? respota4ValueController;
  // State field(s) for Respota5 widget.
  FormFieldController<String>? respota5ValueController;
  // State field(s) for Respota6 widget.
  FormFieldController<String>? respota6ValueController;
  // State field(s) for Respota7 widget.
  FormFieldController<String>? respota7ValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Additional helper methods.
  String? get respota1Value => respota1ValueController?.value;
  String? get respota2Value => respota2ValueController?.value;
  String? get respota3Value => respota3ValueController?.value;
  String? get respota4Value => respota4ValueController?.value;
  String? get respota5Value => respota5ValueController?.value;
  String? get respota6Value => respota6ValueController?.value;
  String? get respota7Value => respota7ValueController?.value;
}
