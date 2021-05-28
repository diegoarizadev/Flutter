void main() { //Todos los programas en dart necesitan el metodo void

//Los mapas también son conocidos como Diccionarios de datos por tener la estructura llave/valor

String Propiedad = 'Soltero';

Map persona = {//Objecto abstracto de tipo llave/valor
  'Nombre': 'Diego',
  'Edad' : '30',
  'Soltero' : true};

print(persona['Nombre']);
print(persona['Edad']);
print(persona[Propiedad]);

Map<String, dynamic> persona1 = {//Objeto llave/valor con limitación de datos.
  'Nombre': 'Alejandro',
  'Edad' : '29',
  'Soltero' : false};

print(persona1['Nombre']);
print(persona1['Edad']);
print(persona1[Propiedad]);


persona1.addAll({'Estudios': 'Universitarios'}); //Agregar un objeto al mapa

print(persona1['Estudios']);
}
