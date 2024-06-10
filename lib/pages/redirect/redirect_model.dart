import '/flutter_flow/flutter_flow_util.dart';
import 'redirect_widget.dart' show RedirectWidget;
import 'package:flutter/material.dart';

class RedirectModel extends FlutterFlowModel<RedirectWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
