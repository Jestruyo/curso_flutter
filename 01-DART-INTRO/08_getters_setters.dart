void main() {
  // Instancia con número inicial y tipo de operación por defecto
  final c1 = Calculadora(n: 4, operation: "suma");

  // Setter: actualiza el valor privado _num1 desde fuera de la clase
  c1.settersNum = 8;
  //c1.clearNum();

  final response_suma = c1.suma(5);
  print(c1.res(response_suma));

  final response_resta = c1.resta(1);
  print(c1.res(response_resta));

  final response_mul = c1.mult(3);
  print(c1.res(response_mul));

  final response_div = c1.div(4);
  print(c1.res(response_div));

  // Getter: lectura del valor almacenado en _num1
  final num = c1.gettersNum;
  print("El numero de la propiedad de clase es: ${num}");
}

/// Calculadora simple: demuestra campo privado, getter, setter y operaciones.
class Calculadora {
  /// Estado interno; el guion bajo lo hace visible solo dentro de este archivo.
  int _num1;
  String operation;

  /// [n] es el valor inicial de [_num1]. [operation] describe la última operación.
  Calculadora({required int n, this.operation = "Suma"}) : _num1 = n;

  int suma(int num) {
    this.operation = "suma";
    int res = _num1 + num;
    return res;
  }

  int resta(int num) {
    this.operation = "resta";
    int res = _num1 - num;
    return res;
  }

  int mult(int num) {
    this.operation = "multiplicacion";
    int res = _num1 * num;
    return res;
  }

  /// División: [_num1] / [num]; el resultado es [double] en Dart.
  double div(int num) {
    this.operation = "division";
    double res = _num1 / num;
    return res;
  }

  /// Setter con nombre distinto al campo: asignación con `c1.settersNum = valor`.
  set settersNum(int n) {
    _num1 = n;
  }

  /// Getter de solo lectura para exponer [_num1] sin asignación directa al campo.
  int get gettersNum {
    return _num1;
  }

  /// Reinicia el número interno a cero.
  void clearNum() {
    _num1 = 0;
  }

  /// Formatea el resultado según [operation] (la actualiza cada método aritmético).
  String res(dynamic n) {
    String result = "";
    if (this.operation == "suma") {
      result = "El resultado de la suma es: ${n}";
    } else if (this.operation == "resta") {
      result = "El resultado de la resta es: ${n}";
    } else if (this.operation == "multiplicacion") {
      result = "El resultado de la multiplicacion es: ${n}";
    } else if (this.operation == "division") {
      result = "El resultado de la division es: ${n}";
    }
    return result;
  }
}
