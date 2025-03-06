import 'package:flutter/material.dart';
import 'package:tarea2/constantes.dart' as con;
import 'package:tarea2/principal.dart';
import 'package:tarea2/singleton.dart';

import 'listas.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  Singleton singleton = Singleton();

  bool varText = true;
  //Variables para guardar el valor de los texformFile
  final user = TextEditingController();//Guardar el input del usuario
  final pass = TextEditingController();//Guardar el input de la contraseña
  String error = '';

  @override
  Widget build(BuildContext context) {
    //El tamano de la vista
    final size = MediaQuery.of(context).size;


    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          margin: EdgeInsets.all(size.width * 0.1),//Ajusta los bordes externos de la izquierda y derecha al 10%
          padding: EdgeInsets.all(size.width * 0.1),//Ajusta los bordes internos del container
          child: Column(

              mainAxisSize: MainAxisSize.min,//Solo abarca el tamano de sus hijos
              children:  [
                Text('User'),
                TextFormField(
                  controller: user,

                ),
                SizedBox(height: 15,),
                Text('Password'),
                TextFormField(
                  controller: pass,
                  obscureText: varText,
                  decoration: InputDecoration(

                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          varText = !varText;
                        });
                      },
                        icon: varText ? Icon(Icons.visibility, color: Colors.black) : Icon(Icons.visibility_off, color: Colors.black)
                    ),
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(color: Colors.grey),
                    labelStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder( borderSide: BorderSide( style: BorderStyle.solid), borderRadius: BorderRadius.circular(20)),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.lock, color: Colors.black),
                  )
                ),
                SizedBox(height: 15,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: con.azul, fixedSize:  Size(size.width*0.75,50)),
                    onPressed: (){
                      setState(() {
                        print(user.text);
                        print(pass.text);
                        if(user.text == con.user && pass.text == con.pass){
                          singleton.name_user = 'Kevin Fernando';
                          //Si son correctas regresan a la vista principañ
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder:
                                  (context)=> const Listas()));}else{
                          //muestra un error a la vista
                          user.text != con.user  && pass.text != con.pass ? error = 'Usuario y contraseña incorrectos':
                          user.text != con.user && pass.text == con.pass ? error = 'Usuario incorrecto':
                          pass.text != con.pass ? error = 'Contraseña incorrecta': error = '';
                        }
                      });
                    },

                    child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),

                ),
                 if(error != '') Text(error, style: TextStyle(color: Colors.red, fontSize: 15),),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('No tienes una cuenta?'),
                    TextButton(
                        onPressed: (){},
                        child: Text('Registrate')
                    )
                  ],
                )
              ]
          ),
        )
      )
    );
  }
}
