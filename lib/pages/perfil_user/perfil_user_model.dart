import '/flutter_flow/flutter_flow_util.dart';
import 'perfil_user_widget.dart' show PerfilUserWidget;
import 'package:flutter/material.dart';

class PerfilUserModel extends FlutterFlowModel<PerfilUserWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
