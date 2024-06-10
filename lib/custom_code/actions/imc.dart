// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<double> imc(
  double peso,
  double altura,
) async {
  // a function to calculate imc
  double imc = peso / (altura * altura);
  return imc;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
