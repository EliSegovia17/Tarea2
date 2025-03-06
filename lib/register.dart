import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    //El tamano de la vista
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(size.width * 0.05),//Ajusta los bordes externos de la izquierda y derecha al 10%
          padding: EdgeInsets.all(size.width * 0.05),//Ajusta los bordes internos del container
          color: Colors.grey,
          child: Column(
              mainAxisSize: MainAxisSize.min,//Solo abarca el tamano de sus hijos
              children:  [
                Text('Name'),
                TextFormField(),
                SizedBox(height: 15,),
                Text('User Name'),
                TextFormField(),
                SizedBox(height: 15,),
                Text('Mail'),
                TextFormField(),
                SizedBox(height: 15,),
                Text('Password'),
                TextFormField(),
                SizedBox(height: 15,),
                Text('Confirm Password'),
                TextFormField(),
                SizedBox(height: 15,),
                ElevatedButton(
                    onPressed: (){},
                    child: Text('Register')
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('You have an'),
                    TextButton(
                        onPressed: (){},
                        child: Text('account?')
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
