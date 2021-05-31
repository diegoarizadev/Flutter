import 'package:flutter/material.dart';

class InputCustom extends StatefulWidget {
  @override
  _InputCustomState createState() => _InputCustomState();
}

class _InputCustomState extends State<InputCustom> {
  final strutStyleBar = new StrutStyle(
    //Instancia Objectos globales para ser reutilizados.
    fontSize: 20,
    fontStyle: FontStyle.italic,
  );

  String _nombre = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Inputs de texto',
          strutStyle: strutStyleBar,
        ),
        backgroundColor: Colors.green,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: 10.0, vertical: 10.0), //Espacios del textField
        children: [_createInput(), Divider(), _createPerson()],
      ),
    );
  }

  Widget _createInput() {
    return TextField(
      autofocus: true, //Posiciona el teclado automaticamente en este campo.
      textCapitalization: TextCapitalization
          .sentences, //Capitalizacion o completado de palabras.
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
                10.0)), //Borde de toda la caja donde va el InputText
        counter:
            Text('Letras : ${_nombre.length}'), //Cantidad de letras escritas.
        hintText: 'Escribe aquí tu nombre', //Placeholder o texto de sugerencia
        labelText: 'Nombres y apellidos',
        helperText:
            'Escribe tus nombre y apellidos en este campo', //Label del campo
        suffixIcon: Icon(
          Icons.accessibility,
          color: Colors.green,
        ), //Icono al final del TextField
        icon: Icon(
          Icons.account_box_rounded,
          color: Colors.green,
        ), //Icono al inicio del Textfield
      ),
      onChanged: (inputData) {
        //Captura del texto ingresado en el inputText
        _nombre = inputData;
        print('Este es el nombre ingresado $_nombre');

        setState(() {
          _nombre = inputData;
        });
      },
    );
  }

  Widget _createPerson() {
    return ListTile(
      title: Text('Nombre es : $_nombre'),
    );
  }
}
