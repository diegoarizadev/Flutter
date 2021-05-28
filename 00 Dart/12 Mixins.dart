void main() {
  final pato = new Pato();
  print('Soy un Pato y ${pato.caminar()}');

  final pezVolador = new PezVolador();
  pezVolador.volar();
  print(' ');
  print('Soy un PezVolador y ${pezVolador.volar()}');

  final tiburcio =
      new Tiburon(nombre: 'Tiburcio', cantidadDientes: 1000, numeroAletas: 4);
  print(' ');
  print('${tiburcio.toString()} ${tiburcio.nadar()}');

  final donal = new Pato(nombre: 'donal', numeroPatas: 2, numeroAlas: 2);
  print(' ');
  print(
      '${donal.toString()} ${donal.volar()} también ${donal.caminar()} y aún más ${donal.nadar()} ... ${donal.graznar()}');
}

abstract class Animal {
  //No se podran crear instancias de esta clase.
  String? nombre; //En la vida real no tiene...pero sirve para el ejemplo.!
}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {
  int? numeroPatas;
  int? numeroAlas;
}

abstract class Pez extends Animal {
  int? numeroAletas;
}

abstract class Volador {
  String volar() => 'se ve muy alto desde acá';
}

abstract class Nadador {
  String nadar() => 'estoy respirando bajo el agua';
}

abstract class Caminante {
  String caminar() => 'puedo sentir la tierra en mis patas';
}

//***Aplicación de MIXINS***

class Delfin extends Mamifero with Nadador {
} //Para hacer el mixins se necesita la palabra reserva with

class Murcielago extends Mamifero with Caminante, Volador {}

class Conejo extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Volador, Nadador {
  //Constructor.
  Pato(
      {String nombre = 'Sin Nombre', int numeroAlas = 0, int numeroPatas = 0}) {
    this.nombre = nombre;
    this.numeroAlas = numeroAlas;
    this.numeroPatas = numeroPatas;
  }

  String toString() =>
      'Soy ${this.nombre} tengo ${this.numeroAlas} Alas, ${this.numeroPatas} hermosas patas y ';

  String graznar() => 'Cuak Cuak Cuak';
}

class Tiburon extends Pez with Nadador {
  int? cantidadDientes;

  Tiburon(
      {String nombre = 'Sin Nombre',
      int numeroAletas = 0,
      int cantidadDientes = 0}) {
    this.nombre = nombre;
    this.numeroAletas = numeroAletas;
    this.cantidadDientes = cantidadDientes;
  }

  String toString() =>
      'Soy ${this.nombre} tengo ${this.numeroAletas} aletas, ${this.cantidadDientes} Dientes y ';
}

class PezVolador extends Pez with Nadador, Volador {}
