import 'package:flutter/material.dart';

class SliderCustom extends StatefulWidget {
  @override
  _SliderCustomState createState() => _SliderCustomState();
}

class _SliderCustomState extends State<SliderCustom> {
  double _valueSlider = 100.0;
  bool _blockCheck = false;
  final strutStyleBar = new StrutStyle(
    //Instancia Objectos globales para ser reutilizados.
    fontSize: 20,
    fontStyle: FontStyle.italic,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Slider',
          strutStyle: strutStyleBar,
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20.0), //Separación en la parte superior.
        child: Column(
          children: [
            _newSlider(),
            _createCheckBox(),
            Expanded(child: _createImage())
          ],
        ),
      ),
    );
  }

  _newSlider() {
    return Slider(
        activeColor: Colors.green,
        label: 'Tamaño de la imagen',
        divisions: 20,
        value: _valueSlider,
        min: 10.0,
        max: 200.0,
        onChanged: (_blockCheck)
            ? null
            : (valueSlide) {
                print('Valor: $valueSlide');

                setState(() {
                  _valueSlider = valueSlide;
                });
              });
  }

  _createImage() {
    return Image(
      image: NetworkImage(
          'http://www.criaderoloschillos.com/wp-content/uploads/2017/05/BostonTerrier.png'),
      width: _valueSlider,
      fit: BoxFit.contain,
    );
  }

  _createCheckBox() {
    return Checkbox(
      value: _blockCheck,
      onChanged: (data) {
        setState(() {
          _blockCheck = data!;
        });
      },
    );
  }
}
