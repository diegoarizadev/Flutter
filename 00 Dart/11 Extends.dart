void main(){


  final superman = new Heroe(nombre : 'Kal-El', poder : 'Fuerza', valentia : 100);

  print(superman);

  final luthor = new Villano(nombre : 'Kal-El', poder : 'Fuerza', maldad : 100);

  print(luthor);

}

abstract class Personaje{ //No se podran crear instancias de Personaje.

  String nombre;
  String poder;
}


class Heroe extends Personaje{ //La clase Extiende de Personaje por lo cual automaticamente obtienen las propiedades o metodos.

  int valentia;
  Heroe({String nombre = '*No tiene Nombre*', String poder, int valentia}){

  this.nombre = nombre;
  this.poder = poder;
  this.valentia = valentia;
  }

  String toString(){
    return 'nombre : ${this.nombre} - poder : ${this.poder} - valentia : ${this.valentia}';
  }
}

class Villano extends Personaje{

  int maldad;

  Villano({String nombre =  '*No tiene Nombre*', String poder, int maldad}){

  this.nombre = nombre;
  this.poder = poder;
  this.maldad = maldad;

  }

  String toString(){
    return 'nombre : ${this.nombre} - poder : ${this.poder} - maldad : ${this.maldad}';
  }
}
