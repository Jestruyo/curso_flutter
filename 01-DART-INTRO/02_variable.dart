void main(){
  final String pokemon = 'Pikachu';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['Thunderbolt', 'Thunder', 'Lightning'];
  final sprites = <String>['ditto/pikachu-1.png', 'ditto/pikachu-2.png', 'ditto/pikachu-3.png'];

  print("""
  Pokemon: $pokemon
  HP: $hp
  Is Alive: $isAlive
  Abilities: ${abilities.join(', ')}
  Sprites: ${sprites.join(', ')}
  """);
}
