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

  print("""
  Pokemon: $pokemon
  HP: $hp
  Is Alive: $isAlive
  Abilities: ${abilities.join(', ')}
  Sprites: ${sprites.join(', ')}
  Año: $anio
  """);
}
