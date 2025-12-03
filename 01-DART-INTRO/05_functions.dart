void main(){
  
  String name = "Jesus";
  String lastname = "Trujillo";
  
  saludo(name, lastname);
  print("La suma de numero es: ${sumaDeNumeros(8,7)}.");
  
}


saludo(name, lastname) => print("Hola ${name} ${lastname}");

sumaDeNumeros(int n1, int n2) => n1 + n2;