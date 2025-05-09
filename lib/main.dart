import 'package:flutter/material.dart';
import 'package:act7_mapp/pantalla_prin.dart';
import 'package:act7_mapp/pantalla1.dart';
import 'package:act7_mapp/pantalla2.dart';
import 'package:act7_mapp/pantalla3.dart';
import 'package:act7_mapp/pantalla4.dart';
import 'package:act7_mapp/pantalla5.dart';
import 'package:act7_mapp/pantalla6.dart';

void main() => runApp(MisPantallas());

class MisPantallas extends StatelessWidget {
  const MisPantallas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'rutas entre paginas',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaInicial(),
        '/pantalla1': (context) => const PantallaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
      },
    );
  }
}
