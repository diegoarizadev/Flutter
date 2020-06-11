void main() { //Todos los programas en dart necesitan el metodo void

  var activadoo = true; //no es buena practica.!
  bool activado = true;

  if(activado){
    print('Las validaciones están encendidas.');
  }else{
    print('Las validaciones NO están encendidas.');
  }


 if(!activado){ //devaluación
    print('Las validaciones están encendidas.');
  }else{
    print('Las validaciones NO están encendidas.');
  }

}
