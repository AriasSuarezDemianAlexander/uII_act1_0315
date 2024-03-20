import 'package:flutter/material.dart';
import 'package:arias0315/pantallas0315/panel_pantalla0315.dart';

void main() => runApp(const MyAppCarpinteria0315());

class MyAppCarpinteria0315 extends StatelessWidget {
  const MyAppCarpinteria0315({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Carpinteria Arias0315",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
          useMaterial3: true),
      home: PanelPantallaa0315(),
    );
  }
}
