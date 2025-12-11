void main() {
  //Objeto de la clase Person
  final Person p1 = Person('Jesus trujillo','Developer Software',33, 2200000);
  final Work w = Work(p1.work,p1.value);
  
  //Imprimir el objeto p1
  print('El objeto p1 es: ${p1}'  '\n');
  //Imprimir el nombre de la persona
  print('El nombre de la persona es: ${p1.name}'  '\n');
  //Cambiar el nombre de la persona
  p1.setName('Sarah');
  //Imprimir el nuevo nombre de la persona
  print('El nuevo nombre de la persona es: ${p1.name}'  '\n');
  //Imprimir el trabajo de la persona
  print('El trabajo de la persona es: ${w.getWork()} \n');
  //Imprimir el objeto w
  print('El objeto w es: ${w}');
  
}

/**
 * Clase Person
 * @param name: String
 * @param work: String
 * @param age: int
 * @param value: int
 */
class Person {
  String name;
  String work;
  int age;
  int value;
  
  /**
   * Constructor de la clase Person
   * @param pName: String
   * @param pWork: String
   * @param pAge: int
   * @param pValue: int
   */
  Person(String pName, String pWork, int pAge, int pValue)
    : name = pName,
      work = pWork,
      age  = pAge,
      value = pValue;
      
  /**
   * Metodo para cambiar el nombre de la persona
   * @param pName: String
   */
  setName(String pName){
    this.name = pName;
  }
}

/**
 * Clase Work
 * @param name: String
 * @param value: int
 */
class Work {
  String name;
  int    value;
  /**
   * Constructor de la clase Work
   * @param pName: String
   * @param pValue: int
   */
  Work(this.name, this.value);
  /**
   * Metodo para obtener el trabajo de la persona
   * @return String
   */
  String getWork(){
    return 'El trabajo que realiza es ${this.name} y su salario es ${this.value}';
  }
}