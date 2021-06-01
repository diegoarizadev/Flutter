import 'dart:async';

import 'package:flutter/material.dart';

class listViewCustom extends StatefulWidget {
  @override
  _listViewCustomState createState() => _listViewCustomState();
}

class _listViewCustomState extends State<listViewCustom> {
  List<int> _listNumbers = List<int>.empty(growable: true);
  int _lastItem = 0;
  bool _Isloading = false;

  //Controlador de la lista para manejar el Scroll
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    //Es un metodo del ciclo de vida de la creacion de un StatefulWidget
    super.initState(); //Hace referencia a la clase state y la inicializa.
    _addFivePhoto(); //Inicializa el Arreglo.
    //Se agrergar un Listener para el scroll

    _scrollController.addListener(() {
      print('Scroll');
      //Valor o posicion actual en pixeles y maximo en pixeles.
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        //Detecta que esta al final
        //_addFivePhoto();
        _fetchData();
      }
    });
  }

  //Se ejecuta cuando la pagina ha sido destruida o sacada del stack
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
          backgroundColor: Colors.green,
        ),
        body: Stack(
          children: [_createList(), _createLoading()],
        ));
  }

  _createList() {
    return RefreshIndicator(
      onRefresh: _getPageOne,
      child: ListView.builder(
        controller: _scrollController, //Asigna el controlador
        //Encargado de renderizar todos los elementos, las veces que sea necesario
        itemCount: _listNumbers.length, //cantidad de items.
        itemBuilder: (BuildContext context, int index) {
          final imagen = _listNumbers[index];
          print('Toma : $imagen');

          return FadeInImage(
            placeholder: AssetImage('assets/placeholder.gif'),
            image: NetworkImage('https://picsum.photos/id/$imagen/500/300'),
          );
        }, //Forma de como se va a dibujar el elemento
      ),
    );
  }

  void _addFivePhoto() {
    for (var i = 0; i < 10; i++) {
      _lastItem++;
      _listNumbers.add(_lastItem);
    }
    setState(() {}); //Redibujar la pantalla
  }

  Future _fetchData() async {
    //Simular un delay.

    _Isloading = true;

    setState(() {}); //Debe redibujarse porque algo cambio.

    final duration = new Duration(seconds: 2);
    new Timer(duration,
        responseHTTP); //Para el metodo responseHTTP, no se agregan los () ya que se esta enviado solo la referencia.
  }

  void responseHTTP() {
    _Isloading = false;
    //Se mueve el scroll para mostrar que existen más registro a mostrar
    _scrollController.animateTo(_scrollController.position.pixels + 100,
        duration: Duration(milliseconds: 250), curve: Curves.fastOutSlowIn);
    _addFivePhoto();
  }

  _createLoading() {
    if (_Isloading) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [CircularProgressIndicator()],
          ),
          SizedBox(
            height: 20.0,
          )
        ],
      );
    } else {
      return Container();
    }
  }

  Future<Null> _getPageOne() async {
//simular una peticion HTTP
    final duration = new Duration(seconds: 2);
    new Timer(duration, () {
      //Purga la lista de numeros.
      _listNumbers.clear();
      _lastItem++;
      _addFivePhoto();
    });

    return Future.delayed(duration);
  }
}
