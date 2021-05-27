void main() {
  final cuadrado = new Cuadrado();
  cuadrado.lado = 10.0;
  print(cuadrado);
  print(cuadrado.area);
  print('area : ${cuadrado.area}'); //Otra Forma de hacer un print.
}

class Cuadrado {
  double _lado =
      0.0; //al colocar el _ en el nombre de la variable automaticamente se convierte en privada.
  double _area = 0.0;

  set lado(double valor) {
    if (valor <= 0) {
      throw ('El lado no puede ser menor a 0'); //La palabra reservada throw dispara o excepciones controladas.
    }
    _lado = valor;
  }

  toString() => 'Lado : $_lado';

  //double get area { //no lleva ()
  //  return _lado * _lado;
  //}

  double get area => _lado * _lado;
}
