// Funcion principal de ejecucion
void main() {
  
  final Map<String,dynamic> person  = {
    
    "name":"Jose",
    "lastname":"Martinez",
    "trabajos":{
      1:"Pintor",
      2:"Chef"
    }
  };
  
  // Impresiones
  print('El trabajo de ${person["name"]} es: ${person["trabajos"][sumaN(0,1)]}');
  print(saludo(name:person["name"]));
}


// Funcion de suma
int sumaN(int a, int b) =>  a + b;

// Funcion de saludo con parametro requerido y opcional.
String saludo({ String? msm = '¡Hello, my friend', required String? name}){
  return '$msm $name! ¿How are you?';
}