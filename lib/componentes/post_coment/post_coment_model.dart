import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'post_coment_widget.dart' show PostComentWidget;
import 'package:flutter/material.dart';

class PostComentModel extends FlutterFlowModel<PostComentWidget> {
  ///  Local state fields for this component.

  List<DocumentReference> comentariofed = [];
  void addToComentariofed(DocumentReference item) => comentariofed.add(item);
  void removeFromComentariofed(DocumentReference item) =>
      comentariofed.remove(item);
  void removeAtIndexFromComentariofed(int index) =>
      comentariofed.removeAt(index);
  void insertAtIndexInComentariofed(int index, DocumentReference item) =>
      comentariofed.insert(index, item);
  void updateComentariofedAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      comentariofed[index] = updateFn(comentariofed[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  Completer<int>? firestoreRequestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Additional helper methods.
  Future waitForFirestoreRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = firestoreRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
