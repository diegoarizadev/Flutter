
import 'package:flutter/material.dart'; //Este Import es necesario para mostrar la interface grafica estandar de flutter

void main() => runApp(new N0rf3nApp());//Función principal de dart para realizar las ejecuciones. runApp esta esperando un widget para inflar la vista

//Widget para inflar la vista
class N0rf3nApp extends StatelessWidget{ //StatelessWidget!
  
  @override
  build(context){ //Context contiene la información del arbol de widgets, temas,  padres, hijos.. y debe retornar un widget

    return MaterialApp(
       home : //Material recibe este parametro obligatoriamente.
       Center( //Este widget hace el centro de los hijos que contenga.
         child : // parametro o widget obligatorio.
          Text( 'Hola Mundo'),// Este es un widget e tipo texto.
         ),  
    );
   
  }

}