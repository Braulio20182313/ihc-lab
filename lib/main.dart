import 'package:flutter/material.dart';
import 'package:inventory/Widgets/Login.dart';
import 'package:inventory/Widgets/Recover.dart';
import 'package:inventory/Widgets/Register.dart';

import 'Widgets/Register1.dart';
import 'Widgets/crud.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:inventory/generated/l10n.dart';

void main() => runApp(InventoryApp());

class InventoryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      routes: {
        '/one': (context) => Login(),
        '/two': (context) => Registro(),
        '/tree': (context) => Recover(),
        '/four': (context) => Crud(),
      },
      initialRoute: '/one',
    );
  }
}
