void main(){
  
  String name = "Jesus";
  String lastname = "Trujillo";
  
  saludo(name, lastname);
  print("La suma de numero es: ${sumaDeNumeros(8,7)}.");

  final int n1 = 30;
  final int n2 = 12;

  print("La resta de los numero $n1 y $n2 es: ${restaNumeros(n1, n2)}");
  print("La multiplicacion de los numero $n1 y $n2 es: ${multiNumeros(n1, n2)}");
  print("Queremos que ${ familiaTrujillo(name : "Sarah Trujillo")}");
  print("El numero ${validator(11)} es mayor que 10.");
  print("${entrada(edad: true)}");
  
}


saludo(name, lastname) => print("Hola ${name} ${lastname}");

sumaDeNumeros(int n1, int n2) => n1 + n2;

/// Resta dos números enteros y devuelve el resultado.
///
/// [n1] El primer número (minuendo).
/// [n2] El segundo número (sustraendo).
/// Returns la diferencia entre [n1] y [n2].
int restaNumeros(int n1, int n2) => n1 - n2;

int multiNumeros(int n1, [int n2 = 2]) {
  
  final int m = n1 * n2;
  
  return m;
}

String familiaTrujillo({ required String name, String msg = "Jehova bendiga por siempre a "}){
  
  return "$msg $name";
  
}

/// Valida si un número es mayor que 10.
///
/// [n] El número a validar (opcional, por defecto es 10).
/// Returns `true` si [n] es mayor que 10, de lo contrario `false`.
bool validator([int n = 10]) {
  if (n > 10) {
    return true;
  } else {
    return false;
  }
}

/// Determina un mensaje basado en si una persona es mayor o menor de edad.
///
/// [edad] Un valor booleano que indica si la persona es mayor de edad (`true`)
/// o menor de edad (`false`).
/// Returns una cadena de texto describiendo la condición de edad.
String entrada({required bool edad}) {
  if (edad) {
    return "La persona es mayor de edad.";
  } else {
    return "La persona es menor de edad.";
  }
}