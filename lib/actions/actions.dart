import '/componentes/drawer/drawer_widget.dart';
import 'package:flutter/material.dart';

Future menu(BuildContext context) async {
  await showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    enableDrag: false,
    context: context,
    builder: (context) {
      return Padding(
        padding: MediaQuery.viewInsetsOf(context),
        child: const DrawerWidget(),
      );
    },
  );
}
