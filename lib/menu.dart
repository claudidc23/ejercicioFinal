import 'package:flutter/material.dart';

class MenuRoute extends StatelessWidget{
 
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: const Text("Menú de opciones")
    ),
    body:Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, 'fichaCliente' );
            },
          child: const Text("Dar de alta al Cliente")
        ),

        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, 'listaClientes' );
            },
          child: const Text("Lista de clientes")
        ),

        ElevatedButton(
          onPressed: () {Navigator.pushNamed(context, 'eliminarCliente' );},
          child: const Text("Borrar cliente")
        ),
      ]
    )
   );
  }

}