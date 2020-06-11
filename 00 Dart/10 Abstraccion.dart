void main(){

  final kia = new Kia();
  final ferrari = new Ferrari();

  kia.arrancar();
  ferrari.arrancar();
}

abstract class Vehiculo{ //Obliga a que otras clases inmplementen los metodos y parametros.

  int llantas;
  void arrancar();
}

class Kia implements Vehiculo{

 int llantas = 4;
 int puertas = 5;

 void arrancar (){
 print('aaaaa aaaa aaa');

 }

}

class Ferrari implements Vehiculo{

 int llantas = 4;
 int puertas = 4;

 void arrancar (){
 print('run run run run..');

 }

}
