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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(singleton.name_user),
      ),
      body: ListView.builder(
        itemCount: con.crearLista(15).length,
        itemBuilder: (BuildContext context, int index) {
          var lista = con.crearLista(15);
          var datos = lista[index].toString().split('#');
          return UserItem(id: datos[0], name: datos[1], apePat: datos[2], apeMat: datos[3]);
        },
      ),
    );
  }
}

class UserItem extends StatelessWidget {
  final String id;
  final String name;
  final String apePat;
  final String apeMat;

  const UserItem({
    super.key, required this.id, required this.name, required this.apePat, required this.apeMat,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('$name $apePat $apeMat'),
        leading: Icon(Icons.account_circle),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () => _showEditDialog(context),
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => _showDeleteDialog(context),
            ),
          ],
        ),
      ),
    );
  }

  void _showEditDialog(BuildContext context) {
    TextEditingController idController = TextEditingController(text: id);
    TextEditingController nameController = TextEditingController(text: name);
    TextEditingController apePatController = TextEditingController(text: apePat);
    TextEditingController apeMatController = TextEditingController(text: apeMat);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Editar Usuario'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(controller: idController, decoration: InputDecoration(labelText: 'ID')),
              TextField(controller: nameController, decoration: InputDecoration(labelText: 'Nombre')),
              TextField(controller: apePatController, decoration: InputDecoration(labelText: 'Apellido Paterno')),
              TextField(controller: apeMatController, decoration: InputDecoration(labelText: 'Apellido Materno')),
            ],
          ),
          actions: [
            TextButton(onPressed: () => Navigator.of(context).pop(), child: Text('Cancelar')),
            TextButton(onPressed: () {
              // Aquí puedes manejar la actualización de los datos
              Navigator.of(context).pop();
            }, child: Text('Guardar')),
          ],
        );
      },
    );
  }

  void _showDeleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text('Eliminar Usuario'),
        content: Text('¿Estás seguro de eliminar a $name $apePat?'),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(), child: Text('Cancelar')),
          TextButton(onPressed: () => Navigator.of(context).pop(), child: Text('Aceptar')),
        ],
      ),
    );
  }
}
