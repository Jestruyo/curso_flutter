// Ejemplo: mapa tipo JSON → modelo Usuario → DTO Info → texto formateado.
// Practica: Map<String, dynamic>, constructores nombrados, parámetros nombrados.

void main() {
  // Simula un JSON de API: claves string, valores de distintos tipos.
  final Map<String, dynamic> json = {
    "name": "Sarah Trujillo",
    "age": 33,
    "phone": 3003758315,
    "active": true,
    "likes": {"1": "Futbol", "2": "Programar", "3": "Comer"},
  };

  // Constructor nombrado: convierte el mapa en un objeto Usuario.
  final user1 = Usuario.dataJson(json);
  // Info agrupa datos para mostrar (nombre, estado, teléfono; cuenta por defecto).
  final info1 = Info(
    nameclient: user1.name,
    active: user1.active,
    phone: user1.phone,
  );
  print(info1.resmsm());
}

/// Representa un usuario persistido o recibido como JSON.
class Usuario {
  String name;
  int age;
  int phone;
  bool active;
  Map<String, dynamic> likes;

  /// Constructor principal: todos los campos obligatorios.
  Usuario(this.name, this.age, this.phone, this.active, this.likes);

  /// Constructor desde mapa: usa `??` para valores por defecto si falta la clave.
  Usuario.dataJson(Map<String, dynamic> data)
      : name = data["name"] ?? "Not found name",
        age = data["age"] ?? "Not found age",
        phone = data["phone"] ?? "Not found phone",
        active = data["active"] ?? "Not fount active",
        likes = data["likes"] ?? "Not found likes";
}

/// Vista/resumen de cliente para imprimir (no es el mismo modelo que Usuario).
class Info {
  String nameclient;
  int account;
  bool active;
  int phone;

  /// `required` en nameclient y phone; account y active tienen valores por defecto.
  Info({
    required this.nameclient,
    this.account = 32456,
    this.active = true,
    required this.phone,
  });

  /// Devuelve un bloque de texto multilínea (raw string con triple comillas).
  String resmsm() {
    return """
    ---INFORME DE CLIENTE---
    ** Nombre: ${nameclient}.
    ** Cuenta: ${account}.
    ** Estado: ${active}.
    ** Telefono: ${phone}.
    """;
  }
}
