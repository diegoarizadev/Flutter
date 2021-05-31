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
  String _email = '';
  String _fecha = '';

  TextEditingController _inputDateDontroller =
      new TextEditingController(); //Proppiedad para controlar el TextField desde cualquier otra funcion o lugar del codigo

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
        children: [
          _createInput(),
          Divider(),
          _createEmail(),
          Divider(),
          _createPassword(),
          Divider(),
          _createDate(context),
          Divider(),
          _createPerson(),
          Divider(),
        ],
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
      subtitle: Text('Email es : $_email'),
    );
  }

  Widget _createEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
                10.0)), //Borde de toda la caja donde va el InputText
        hintText:
            'Escribe aquí correo electrónico', //Placeholder o texto de sugerencia
        labelText: 'Correo Electrónico',
        helperText: 'Escribe tu correo.', //Label del campo
        suffixIcon: Icon(
          Icons.alternate_email,
          color: Colors.green,
        ), //Icono al final del TextField
        icon: Icon(
          Icons.email,
          color: Colors.green,
        ), //Icono al inicio del Textfield
      ),
      onChanged: (inputData) {
        //Captura del texto ingresado en el inputText
        setState(() => _email = inputData);
      },
    );
  }

  Widget _createPassword() {
    return TextField(
      obscureText: true, //Propiedad para campos de tipo Password
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
                10.0)), //Borde de toda la caja donde va el InputText
        hintText:
            'Escribe aquí correo electrónico', //Placeholder o texto de sugerencia
        labelText: 'Contraseña',
        helperText: 'Escribe tu contraseña', //Label del campo
        suffixIcon: Icon(
          Icons.password,
          color: Colors.green,
        ), //Icono al final del TextField
        icon: Icon(
          Icons.password_outlined,
          color: Colors.green,
        ), //Icono al inicio del Textfield
      ),
      onChanged: (inputData) {
        //Captura del texto ingresado en el inputText
        setState(() => _email = inputData);
      },
    );
  }

  Widget _createDate(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputDateDontroller, //Se asigna el controlador al campo.
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
                10.0)), //Borde de toda la caja donde va el InputText
        hintText:
            'Selecciona tu fecha de nacimiento', //Placeholder o texto de sugerencia
        labelText: 'Fecha de nacimiento',
        helperText: 'Fecha de nacimiento', //Label del campo
        suffixIcon: Icon(
          Icons.date_range,
          color: Colors.green,
        ), //Icono al final del TextField
        icon: Icon(
          Icons.date_range_rounded,
          color: Colors.green,
        ), //Icono al inicio del Textfield
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(
            new FocusNode()); //Se quita el Foco o seleccion del campo
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    //Se va aretornar ubn Future
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025),
    );

    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputDateDontroller.text = _fecha; //Se asigna la fecha al textfield.
      });
    }
  }
}
