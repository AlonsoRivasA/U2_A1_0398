import 'package:flutter/material.dart';
import 'package:rivas0398/pantallas0398/panel0398/panel_pantalla0398.dart';

void main() => runApp(const MiAppXbox0398());

class MiAppXbox0398 extends StatelessWidget {
  const MiAppXbox0398({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Rivas web",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const PanelPantalla0398(),
    );
  }
}
