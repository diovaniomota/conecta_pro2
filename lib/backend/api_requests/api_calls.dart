import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Stripe Group Code

class StripeGroup {
  static String getBaseUrl() => 'https://api.stripe.com/v1';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer sk_test_51P5opR2LH1MymCiTs6RdnnyUTQOocK5tgq59CuwRnvY2wCOchpXmK7nlm2Nb2S0l7rBZq9z5yCHbxNU0FDbziRIO00mrALfEhN',
    'Contente-Type': 'x-www-form-urlencoded',
  };
  static ObterStatusAssinaturaCall obterStatusAssinaturaCall =
      ObterStatusAssinaturaCall();
  static CriarClienteCall criarClienteCall = CriarClienteCall();
  static CheckoutSessionsCall checkoutSessionsCall = CheckoutSessionsCall();
  static ObterAssinaturaCall obterAssinaturaCall = ObterAssinaturaCall();
}

class ObterStatusAssinaturaCall {
  Future<ApiCallResponse> call({
    String? idAssinatura = '',
  }) async {
    final baseUrl = StripeGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'obterStatusAssinatura',
      apiUrl: '$baseUrl/subscriptions/$idAssinatura',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer sk_test_51P5opR2LH1MymCiTs6RdnnyUTQOocK5tgq59CuwRnvY2wCOchpXmK7nlm2Nb2S0l7rBZq9z5yCHbxNU0FDbziRIO00mrALfEhN',
        'Contente-Type': 'x-www-form-urlencoded',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  bool? isPlanActive(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.items.data[:].plan.active''',
      ));
}

class CriarClienteCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? nome = '',
  }) async {
    final baseUrl = StripeGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'criarCliente',
      apiUrl: '$baseUrl/customers',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_51P5opR2LH1MymCiTs6RdnnyUTQOocK5tgq59CuwRnvY2wCOchpXmK7nlm2Nb2S0l7rBZq9z5yCHbxNU0FDbziRIO00mrALfEhN',
        'Contente-Type': 'x-www-form-urlencoded',
      },
      params: {
        'name': nome,
        'email': email,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? customerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class CheckoutSessionsCall {
  Future<ApiCallResponse> call({
    String? customer = '',
    String? successUrl = '',
    String? cancelUrl = '',
    String? price = '',
  }) async {
    final baseUrl = StripeGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'checkoutSessions',
      apiUrl: '$baseUrl/checkout/sessions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_51P5opR2LH1MymCiTs6RdnnyUTQOocK5tgq59CuwRnvY2wCOchpXmK7nlm2Nb2S0l7rBZq9z5yCHbxNU0FDbziRIO00mrALfEhN',
        'Contente-Type': 'x-www-form-urlencoded',
      },
      params: {
        'mode': "subscription",
        'success_url': successUrl,
        'cancel_url': cancelUrl,
        'line_items[0][price]': price,
        'line_items[0][quantity]': "1",
        'customer': customer,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
}

class ObterAssinaturaCall {
  Future<ApiCallResponse> call({
    String? customer = '',
  }) async {
    final baseUrl = StripeGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'obterAssinatura',
      apiUrl: '$baseUrl/customers/$customer/subscriptions',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer sk_test_51P5opR2LH1MymCiTs6RdnnyUTQOocK5tgq59CuwRnvY2wCOchpXmK7nlm2Nb2S0l7rBZq9z5yCHbxNU0FDbziRIO00mrALfEhN',
        'Contente-Type': 'x-www-form-urlencoded',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? assinatura(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].id''',
      ));
}

/// End Stripe Group Code

class ApiBuscarCepCall {
  static Future<ApiCallResponse> call({
    String? varcep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'apiBuscarCep',
      apiUrl: 'https://viacep.com.br/ws/$varcep/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? localidade(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
  static String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
  static String? logradouro(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
