import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'especialidades_personal_widget.dart' show EspecialidadesPersonalWidget;
import 'package:flutter/material.dart';

class EspecialidadesPersonalModel
    extends FlutterFlowModel<EspecialidadesPersonalWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkbox widget.
  List<PersonalRecord>? hit;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkbox widget.
  List<PersonalRecord>? musc;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkbox widget.
  List<PersonalRecord>? crossFit;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkbox widget.
  List<PersonalRecord>? funcional;
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkbox widget.
  List<PersonalRecord>? jump;
  // State field(s) for Checkbox widget.
  bool? checkboxValue6;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkbox widget.
  List<PersonalRecord>? yoga;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
