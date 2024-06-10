import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_page_widget.dart' show ChatPageWidget;
import 'package:flutter/material.dart';

class ChatPageModel extends FlutterFlowModel<ChatPageWidget> {
  ///  Local state fields for this page.

  List<UsersRecord> usuarios = [];
  void addToUsuarios(UsersRecord item) => usuarios.add(item);
  void removeFromUsuarios(UsersRecord item) => usuarios.remove(item);
  void removeAtIndexFromUsuarios(int index) => usuarios.removeAt(index);
  void insertAtIndexInUsuarios(int index, UsersRecord item) =>
      usuarios.insert(index, item);
  void updateUsuariosAtIndex(int index, Function(UsersRecord) updateFn) =>
      usuarios[index] = updateFn(usuarios[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
