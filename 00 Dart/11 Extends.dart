void main() {
  final superman = new Heroe(nombre: 'Kal-El', poder: 'Fuerza', valentia: 100);

  print(superman);

  final luthor = new Villano(
      nombre: 'Luthor', poder: 'Inteligencia y dinero', maldad: 100);

  print(luthor);
}

abstract class Personaje {
  //No se podran crear instancias de Personaje.

  String? nombre;
  String? poder;
}

class Heroe extends Personaje {
  //La clase Extiende de Personaje por lo cual automaticamente obtienen las propiedades o metodos.

  int valentia = 0;

  Heroe(
      {String nombre = '*No tiene Nombre*',
      String poder = '*No tiene poder*',
      int valentia = 0}) {
    this.nombre = nombre;
    this.poder = poder;
    this.valentia = valentia;
  }

  String toString() {
    return '**HEROE** nombre : ${this.nombre} - poder : ${this.poder} - valentia : ${this.valentia}';
  }
}

class Villano extends Personaje {
  int maldad = 0;

  Villano(
      {String nombre = '*No tiene Nombre*',
      String poder = '*No tiene poder*',
      int maldad = 0}) {
    this.nombre = nombre;
    this.poder = poder;
    this.maldad = maldad;
  }

  String toString() {
    return '**VILLANO** nombre : ${this.nombre} - poder : ${this.poder} - maldad : ${this.maldad}';
  }
}
