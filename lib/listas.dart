import 'package:flutter/material.dart';
import 'package:tarea2/constantes.dart' as con;
import 'package:tarea2/singleton.dart';

class Listas extends StatefulWidget {
  const Listas({Key? key}) : super(key: key);

  @override
  _ListasState createState() => _ListasState();
}

class _ListasState extends State<Listas> {

  Singleton singleton = Singleton();
  //Funcion que inicializa o asigna o crea todo antes de que carge la vista
  @override
  void initState() {
    //TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(singleton.name_user),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container( width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height * 0.45,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child : Column(
              //Unico hijo usando una lista
              children: List.generate(10, (index){ return buildContainer('Nombre', 'Apellido');}),
            ),),
          ),
          //buildContainer('Nombre', 'Apellido'),
          SizedBox(height: 20,),

          Container( width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height * 0.45,
            child:ListView.builder(
                itemCount: con.crearLista(15).length,
                itemBuilder: (BuildContext context, int index){
                  /// var -> cualquier tipo de variable
                  var lista = con.crearLista(15); //Creando la lista de 15 elementos
                  //Pasamos el registro al index a datos en forma de arreglo
                  var datos = lista[index].toString().split('#');
                  //datos[0] = ID
                  //datos[2] = apellido...

              return NewWidget(name: datos[1], ape: datos[2]);//Se crean listas infinitas
            })
          ),

          //NewWidget()
        ],
      ),
    );
  }

  Container buildContainer(String name, String ap) {
    return Container(
        color: Colors.blue,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 11,
                    child: Text(name),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.account_circle),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 11,
                    child: Text(ap),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.edit),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.delete),
                  )
                ],
              ),
            ]
        )
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key, required this.name, required this.ape,
  });

  final String name;
  final String ape;

  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.blue,
    child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                flex: 11,
                child: Text(name),
              ),
              Expanded(
                flex: 1,
                child: Icon(Icons.account_circle),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 11,
                child: Text(ape),
              ),
              Expanded(
                flex: 1,
                child: Icon(Icons.edit),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    // Corrección del showDialog
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text(name),
                        content: Text('¿Estás seguro de eliminar?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Cerrar el diálogo
                            },
                            child: Text('Aceptar'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Cerrar el diálogo
                            },
                            child: Text('Cancelar'),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ]
    )
          );
  }
}
