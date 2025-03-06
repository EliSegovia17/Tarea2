///Es una clase de base de datos que se almacena en cache
///Acceso global desde cualquier vista a nuestra informacion
class Singleton{
  //? -> que se pueda asignar un valor null
  static Singleton? _instance;//Creamos una instancia de nuestra clase

//Obener la instancia ya creada del cache

  Singleton._internal(){
    _instance = this;
  }

  //Veridicas si singlenton == null, si es asi se crea una nueva instancia,
//Si no le asignamos la instancia de cache

  factory Singleton() => _instance ?? Singleton._internal();

  //Cada variable que se crea dentro de Singleton se le debe de asignar un valor fijo
  String name_user = '';


}