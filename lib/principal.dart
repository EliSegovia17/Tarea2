import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});
  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  bool fila1_estado = false;
  List<bool> fila3_estados = List.generate(5, (index) => false);
  bool fila4_estado = false;
  List<bool> fila5_estados = List.generate(2, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      fila1_estado = !fila1_estado;
                    });
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width / 5,
                      height: MediaQuery.of(context).size.height / 6,
                      color: fila1_estado ? Colors.red : Colors.orange,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      fila1_estado = !fila1_estado;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 6,
                    color: fila1_estado ? Colors.pink : Colors.purple,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      fila1_estado = !fila1_estado;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 6,
                    color: fila1_estado ? Colors.yellow : Colors.lightGreenAccent,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      fila1_estado = !fila1_estado;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 6,
                    color: fila1_estado ? Colors.teal : Colors.green,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      fila1_estado = !fila1_estado;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 6,
                    color: fila1_estado ? Colors.indigo : Colors.blue,
                  ),
                ),


              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width/5,
                      height: MediaQuery.of(context).size.height/6,
                      color: Colors.yellow
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width/5,
                      height: MediaQuery.of(context).size.height/6,
                      color: Colors.green
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width/5,
                      height: MediaQuery.of(context).size.height/6,
                      color: Colors.red
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width/5,
                      height: MediaQuery.of(context).size.height/6,
                      color: Colors.blue
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width/5,
                      height: MediaQuery.of(context).size.height/6,
                      color: Colors.pink
                  )
                ]
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      fila3_estados[0] = !fila3_estados[0];
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 6,
                    color: fila3_estados[0] ? Colors.blue : Colors.orange,
                    child: Text(
                      fila3_estados[0] ? 'Color azul' : 'Color naranja',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: fila3_estados[0] ? Colors.orange : Colors.blue,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      fila3_estados[1] = !fila3_estados[1];
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 6,
                    color: fila3_estados[1] ? Colors.green : Colors.pink,
                    child: Text(
                      fila3_estados[1] ? 'Color verde' : 'Color rosa',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: fila3_estados[1] ? Colors.pink : Colors.green,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      fila3_estados[2] = !fila3_estados[2];
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 6,
                    color: fila3_estados[2] ? Colors.purple : Colors.cyan,
                    child: Text(
                      fila3_estados[2] ? 'Color morado' : 'Color cian',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: fila3_estados[2] ? Colors.cyan : Colors.purple,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      fila3_estados[3] = !fila3_estados[3];
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 6,
                    color: fila3_estados[3] ? Colors.red : Colors.teal,
                    child: Text(
                      fila3_estados[3] ? 'Color rojo' : 'Color turquesa',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: fila3_estados[3] ? Colors.teal : Colors.red,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      fila3_estados[4] = !fila3_estados[4];
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 6,
                    color: fila3_estados[4] ? Colors.brown : Colors.lime,
                    child: Text(
                      fila3_estados[4] ? 'Color café' : 'Color lima',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: fila3_estados[4] ? Colors.lime : Colors.brown,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      fila4_estado = !fila4_estado;
                      print('C I N C O');
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 6,
                    color: Colors.blue,
                    child: Text(
                      'C',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      print('C I N C O');
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 6,
                    color: Colors.red,
                    child: Text(
                      'I',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      fila4_estado = !fila4_estado;
                      print('C I N C O');
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 6,
                    color: Colors.green,
                    child: Text(
                      'N',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      fila4_estado = !fila4_estado;
                      print('C I N C O');
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 6,
                    color: Colors.orange,
                    child: Text(
                      'C',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      fila4_estado = !fila4_estado;
                      print('C I N C O');
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 6,
                    color: Colors.purple,
                    child: Text(
                      'O',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      fila5_estados[0] = !fila5_estados[0];
                    });
                  },
                  child:
                  Container(
                      width: MediaQuery.of(context).size.width / 5,
                      height: MediaQuery.of(context).size.height / 6,
                      color: fila5_estados[0] ? Colors.yellow : Colors.orange,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      fila5_estados[1] = !fila5_estados[1];
                    });
                  },
                  child:
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 6,
                    color: fila5_estados[1] ? Colors.green : Colors.blue,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                    });
                  },
                  child:
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 6,
                    color: Colors.red,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      fila5_estados[1] = !fila5_estados[1];
                    });
                  },
                  child:
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 6,
                    color: fila5_estados[1] ? Colors.blue : Colors.green,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      fila5_estados[0] = !fila5_estados[0];
                    });
                  },
                  child:
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 6,
                    color: fila5_estados[0] ? Colors.orange : Colors.yellow,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      fila1_estado = !fila1_estado;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 6,
                    color: fila1_estado ? Colors.orange : Colors.red, // Invertido
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      fila1_estado = !fila1_estado;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 6,
                    color: fila1_estado ? Colors.purple : Colors.pink, // Invertido
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      fila1_estado = !fila1_estado;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 6,
                    color: fila1_estado ? Colors.lightGreenAccent : Colors.yellow, // Invertido
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      fila1_estado = !fila1_estado;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 6,
                    color: fila1_estado ? Colors.green : Colors.teal, // Invertido
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      fila1_estado = !fila1_estado;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 6,
                    color: fila1_estado ? Colors.blue : Colors.indigo, // Invertido
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
