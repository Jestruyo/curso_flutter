void main() {
  // Map<int,dynamic> es un mapa que contiene un entero y un dato dinamico.
  final Map<int,dynamic> Stand = {
    1:{"once":11,"doce":12},
    2:"2",
    3:"3",
    4:"4"
  };
  // Stand[1]["once"] es el valor de la clave "once" del mapa Stand.
  print('${Stand[1]["once"]}');

  final Map<String,int> Stand2 = {
    "once":11,
    "doce":12,
    "trece":13,
    "catorce":14
  };
  // Stand2["once"] es el valor de la clave "once" del mapa Stand2.
  print('${Stand2["once"]}');

  final Map<String,dynamic> Stand3 = {
    "once":"11",
    "doce":"12",
    "trece":13,
    "catorce":true
  };
  // Stand3["once"] es el valor de la clave "once" del mapa Stand3.
  print('${Stand3["once"]}');
  print('${Stand3["doce"]}');
  print('${Stand3["trece"]}');
  print('${Stand3["catorce"]}');
}