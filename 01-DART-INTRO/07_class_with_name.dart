void main(){

  // Json o Map
  final Map<String,dynamic> rawJsom = {
    "name":"Jesus",
    "power":"Futbol",
    "isAlive":true
  };

  // Uso del contructor1 | Aqui le pasamos los parametros uno a uno.
  final Hero Heroe = Hero(isAlive: true, power: "Brutalidad", name: "El chapulin");

  // Uso del contructor2 | Aqui solo pasamos el Json, pero internamente inicializa los parametros.
  final Hero HeroeJson = Hero.fromJson(rawJsom);

  //Impresiones de Objetos
  print(Heroe);
  print(HeroeJson);
}

class Hero {

  // Propiedades
  String name;
  String power;
  bool isAlive;

  // Constructor1: Forma tradicional de crear un constructor con parametros por nombre y no posicionales.
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });

  // Constructor2: Forma corta de crear un constructor por nombre. Este fue creado de la misma clase pero para recibir un json
  Hero.fromJson(Map<String,dynamic> json)
    : isAlive = json["isAlive"] ?? "No isAlive found",
      power = json["power"] ?? "No power found",
      name = json["name"] ?? "No name found";

  // Metodo que valida si el Heroe esta vivo o muerto.
  String live(bool live){
    return '${live ? 'Vivo':'Muerto'}';

  }

  // Se sobre escribe el metodo tostring, para realizar modificaciones sobre el.
  @override
  String toString(){
    return "Mi Heroe es ${name} y tiene la habilidad ${power}. Actualmente esta ${live(isAlive)}";
  }
}
