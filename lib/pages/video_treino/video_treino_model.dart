import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'video_treino_widget.dart' show VideoTreinoWidget;
import 'package:flutter/material.dart';

class VideoTreinoModel extends FlutterFlowModel<VideoTreinoWidget> {
  ///  Local state fields for this page.

  int contadorAgrupamento = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Checkbox widget.

  Map<VideoRecord, bool> checkboxValueMap = {};
  List<VideoRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
