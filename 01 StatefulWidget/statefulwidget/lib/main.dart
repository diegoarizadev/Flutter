import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyAppN0rf3n());

class MyAppN0rf3n extends StatelessWidget {
  //StatelessWidget -> Hace la app un widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Welcome to App N0rf3n', home: RandomWords());
  }
}

class RandomWordsState extends State<RandomWords> {
  //State class
  final _suggestions = <WordPair>[]; //Almacena las palabra sugeridas.
  final Set<WordPair> _saved =
      Set<WordPair>(); //Almacena las palabras seleccionadas.
  final _biggerFont =
      const TextStyle(fontSize: 18.0); //Aumenta el tamaño de la fuente.
  // TODO Add build() method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generador de palabras'),
      ),
      body:
          _buildSuggestions(), //lamar directamente a la biblioteca de generación de palabras
    );
  }

  /*
  /*1*/ El callback itemBuilder es llamado una vez por cada par de palabras sugeridas, y coloca cada sugerencia en una fila ListTile. Por cada fila, la función añade una fila ListTile para las parejas de palabras. Para las filas impares, la función añade un widget Divider para separar visualmente las entradas. Nota que este divisor puede ver ser dificil de ver en los dispositivos más pequeños.
  /*2*/ Añade un widget divisor de un pixel de altura antes de cada fila en el ListView.
  /*3*/ La expresión i ~/ 2 divide i entre 2 y devuelve un resultado entero. Por ejemplo: 1, 2, 3, 4, 5 dan como resultado 0, 1, 1, 2, 2. Esto calcula el actual numero de palbras emparejadas en el ListView, menos los widgests divisores.
  /*4*/ Si has alcanzado el final de los pares de palabras dispobibles, entonces genera 10 más y añade estos a la lista de sugerencias
  */
  Widget _buildSuggestions() {
    //Función para crear un ListView
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: /*1*/ (context, i) {
          //factory builder, parametros el BuildContext y un fila de iteración
          if (i.isOdd) return Divider(); /*2*/ //función callback anonima

          final index = i ~/
              2; /*3*/ //incrementa dos veces por cada pareja de palabras sugeridas: una para el ListTile
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); /*4*/
          }
          return _buildRow(_suggestions[
              index]); //llama a _buildRow() una vez por cada pareja de palabras
        });
  }

  /*Esta función muestra cada pareja en un ListTile*/
  Widget _buildRow(WordPair pair) {
    final bool alreadySaved =
        _saved.contains(pair); //Validación para las palabras almacenadas
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
        //Agrega el icono al ListView
        alreadySaved ? Icons.add_circle : Icons.add_circle_outline,
        color: alreadySaved ? Colors.green : null,
      ),
      onTap: () {
        //Agrega la acción al tocar cada celda del ListView
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }
}

class RandomWords extends StatefulWidget {
  //Widget stateful
  @override
  RandomWordsState createState() => new RandomWordsState();
}
