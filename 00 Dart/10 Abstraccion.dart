void main() {
  final kia = new Kia();
  kia.setLlantas = 4;
  final ferrari = new Ferrari();

  kia.arrancar();
  print('Cantidad de puertas del Kia : ${kia.getPuertas}');
  ferrari.arrancar();
}

abstract class Vehiculo {
  //Obliga a que otras clases inmplementen los metodos y parametros.

  int? llantas;
  void arrancar();
}

class Kia implements Vehiculo {
  int? llantas;
  int _puertas = 5;

  void arrancar() {
    print('run run run...');
  }

  set setLlantas(int qtyllantas) {
    if (qtyllantas <= 0 || qtyllantas <= 3) {
      throw ('La cantidad de llantas no puede ser menor a 3 para un Vehiculo');
    } else {
      llantas = qtyllantas;
    }
  }

  int get getPuertas => _puertas;
}

class Ferrari implements Vehiculo {
  int? llantas = 4;
  int puertas = 4;

  void arrancar() {
    print('run run run run.. ruuuun');
  }
}
