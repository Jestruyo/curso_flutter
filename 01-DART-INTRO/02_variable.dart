/**
 * Las variables son contenedores de datos.
 * Las variables pueden ser de tipo final o var.
 * 
 */
void main(){
  final String pokemon = 'Pikachu';
  var  hp = 100;
  var  isAlive = true;
  final List<String> abilities = ['Thunderbolt', 'Thunder', 'Lightning'];
  final sprites = <String>['ditto/pikachu-1.png', 'ditto/pikachu-2.png', 'ditto/pikachu-3.png'];
  const anio = 2025;

  // Dynamic Variable: es una variable que puede contener cualquier tipo de dato.
  dynamic dynamicVariable = 'Hola';
  dynamicVariable = 123;
  dynamicVariable = true;
  dynamicVariable = [1, 2, 3];
  dynamicVariable = {1, 2, 3};
  dynamicVariable = (1, 2, 3);
  dynamicVariable = {1: 'uno', 2: 'dos', 3: 'tres'};
  dynamicVariable = [1, 2, 3];
  dynamicVariable = {1, 2, 3};

  print("""
  Pokemon: $pokemon
  HP: $hp
  Is Alive: $isAlive
  Abilities: ${abilities.join(', ')}
  Sprites: ${sprites.join(', ')}
  Año: $anio
  Dynamic Variable: $dynamicVariable
  """);
}
