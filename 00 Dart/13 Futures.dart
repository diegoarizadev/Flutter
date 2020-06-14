//futures son tareas asincronas que se realizan en un hilo independiente al principal.
//Los futures pueden generar errores y deben ser controlados.
void main(){

  print('Primera línea');
  httpGet('https://api.google.com.co/rapiditos').then((data){
    print(data);
  });
  print('Ultima línea');
}


Future<String> httpGet (String Url){ //Estructura de la declaración de un Future
  return Future.delayed(
    new Duration (seconds : 4), //Duración
    (){ //Callback
      return 'Hola Mundo';
    }
  );
}
