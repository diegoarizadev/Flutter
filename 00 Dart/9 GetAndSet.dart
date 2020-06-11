
void main(){

  final cuadrado = new Cuadrado();
  cuadrado.lado = 10;
  print(cuadrado);
  print(cuadrado.area);
  print('area : ${cuadrado.area}'); //Otra Forma de hacer un print.
}
​
class Cuadrado{

  double _lado; //al colocar el _ en el nombre de la variable automaticamente se convierte en privada.
  double _area;

  set lado(double valor){
    if (valor <= 0){
      throw('El lado no puede ser menor a 0');
    }

    _lado = valor;
  }

  toString() => 'Lado : $_lado';

  //double get area { //no lleva ()
  //  return _lado * _lado;
  //}

    double get area =>_lado * _lado;

}
