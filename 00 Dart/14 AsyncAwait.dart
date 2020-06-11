
void main() async {

  print('Primera línea');

  String data = await httpGet('https://api.google.com.co/rapiditos');

  print(data);

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
