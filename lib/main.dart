import 'package:ejercicio_final/eliminarCliente.dart';
import 'package:ejercicio_final/fichaCliente.dart';
import 'package:ejercicio_final/listaClientes.dart';
import 'package:ejercicio_final/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        '/':(context) => MenuRoute(),
        'fichaCliente':(context) =>  const fichaCliente(),
        'tercera':(context) => listaClientes(),
        'cuarta':(context) => borrarCliente(),


      },

  

    );
  }
}


