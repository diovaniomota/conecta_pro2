// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<double> percentualGordura1(
  double peso,
  double altura,
  int idade,
) async {
  // calcular percentual de gordura corporal com base na altura, peso e idade atual
  double imc = peso / (altura * altura);
  double percentualGordura = 1.20 * imc + 0.23 * idade - 10.8;
  return percentualGordura;
}
