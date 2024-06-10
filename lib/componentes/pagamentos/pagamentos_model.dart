import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pagamentos_widget.dart' show PagamentosWidget;
import 'package:flutter/material.dart';

class PagamentosModel extends FlutterFlowModel<PagamentosWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (obterAssinatura)] action in Button widget.
  ApiCallResponse? idAssinatura;
  // Stores action output result for [Backend Call - API (obterStatusAssinatura)] action in Button widget.
  ApiCallResponse? statusAssinatura;
  // Stores action output result for [Backend Call - API (checkoutSessions)] action in Button widget.
  ApiCallResponse? semestralResult;
  // Stores action output result for [Backend Call - API (checkoutSessions)] action in Button widget.
  ApiCallResponse? anualResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
