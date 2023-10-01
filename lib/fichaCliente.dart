import 'package:ejercicio_final/cliente.dart';
import 'package:flutter/material.dart';




class fichaCliente extends StatefulWidget {
  const fichaCliente({super.key});

  @override
  State <fichaCliente> createState(){
    return fichaClienteState();
  } 

}






class fichaClienteState extends State<fichaCliente>{
  final _formKey = GlobalKey<FormState>();
  List<String> items = ['Particular', 'Empresa'];
  String? selectedItem = 'Particular';
  TextEditingController fechaController = TextEditingController();
  TextEditingController nombreController = TextEditingController();
  TextEditingController apellido1Controller = TextEditingController();
  TextEditingController apellido2Controller = TextEditingController();
  TextEditingController dniController = TextEditingController();
 
  
  crearFecha() async{
    DateTime? fechaSeleccionada = await showDatePicker(
      context: context, 
      initialDate: DateTime.now(), 
      firstDate: DateTime(1950), 
      lastDate: DateTime(2100));

      setState(() {
        if ( fechaSeleccionada!=null){
          String fechaformat ="${fechaSeleccionada.year.toString()}-${fechaSeleccionada.month.toString().padLeft(2,'0')}-${fechaSeleccionada.day.toString().padLeft(2,'0')}";
          fechaController.text = fechaformat;

       
        }
      });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: nombreController,
             decoration: const InputDecoration(
             labelText: "Nombre",
             ),
            

            validator:(value){
              if (value!.isEmpty) {
                return 'Por favor mete algún texto';
              }
              return null;
            },
          ),

          TextFormField(
            controller: apellido1Controller,
             decoration: const InputDecoration(
            labelText: "Primer Apellido",
             ),
            
            validator:(value){
              if (value!.isEmpty) {
                return 'Por favor mete algún texto';
              }

            },
          ),


          TextFormField(
            controller: apellido2Controller,
             decoration: const InputDecoration(
            labelText: "Segundo Apellido",
             ),
          ),


          TextFormField(
              controller: dniController,
              keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 17),
                  decoration: const InputDecoration(
                      labelText: "DNI",
                      border: OutlineInputBorder()
                  ),
                  textAlign: TextAlign.left, validator: (text) {
                    final intDNI = int.tryParse(text!);
                    if (text == null || text.isEmpty){
                      return 'Por favor mete un número';

                    }        

            },
          ),

          TextFormField(
            controller: fechaController,
            onTap: () {
              crearFecha();
            },
            decoration: const InputDecoration(
              hintText: "fecha"
              ),
          ),

         
          
         DropdownButton<String>(
          value: selectedItem,
          items: items.map((item) => DropdownMenuItem<String>(
            value: item,
            child: Text(item)
            )).toList(),
            onChanged: (item)=> setState (() => selectedItem=item),
         ),
            

             ElevatedButton(onPressed: (){
              if (_formKey.currentState!.validate()) {
                
              }

             }, child: const Text("Guardar cliente")), 




            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            } , child: const Text ("Volver")),
          ]
        )
      )
    );
  }


 

}


  




