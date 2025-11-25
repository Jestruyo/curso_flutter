void main(){
  // List<int> es una lista que contiene enteros.
  final listnumber = [1,2,3,4,5,6,6,7,7,8,8,8,9,10];
  print("Lista de numeros: $listnumber");
  print("Tamaño de la lista: ${listnumber.length}");
  print("Index: ${listnumber[2]}");
  print("Primer elemento: ${listnumber.first}");
  print("Ultimo elemento: ${listnumber.last}");
  print("Reversed: ${listnumber.reversed}");
  
  // reversed es un Iterable que contiene los elementos de la lista en orden inverso.
  final reversedNumbers = listnumber.reversed;
  print(' ');
  print('Ahora es un Iterable, retornado por reversed: $reversedNumbers');
  print('List: ${ reversedNumbers.toList()}');
  print('Set: ${ reversedNumbers.toSet}');
  
  final numbersGreaterThan5 = listnumber.where((num){
    return num > 5;
  });
  
  // numbersGreaterThan5 es un Iterable que contiene los elementos de la lista que son mayores a 5.
  print('Números mayores a 5: $numbersGreaterThan5');
  
}