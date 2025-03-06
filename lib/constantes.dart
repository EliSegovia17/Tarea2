//Archivo donde se crean plas variables que simpre tendran el mismo valor
//Se puede acceder desde cualquier vista

import 'package:flutter/material.dart';
import 'package:tarea2/constantes.dart' as con;

const azul = Colors.blue;
const color = Color(0xFF4A75BA);
const String user = '';
const pass = '';

//ID # NOMBRE # APELLIDO # BANDERA
const List nombres = [
  '1#Nombre1#Apellido1#1',
  '2#Nombre2#Apellido2#2',
  '3#Nombre3#Apellido3#3',
  '4#Nombre4#Apellido4#4',
];

List crearLista(int index)
{
  List names = [];
  for(int i = 0; i < index; i++)
    {
      names.add('$i#Nombre$i#Apellido$i#1');
    }
  return names;
}
