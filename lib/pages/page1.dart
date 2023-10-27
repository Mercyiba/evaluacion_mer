import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calcular Altura de caida',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: AlturaCalculadora(),
    );
  }
}

class AlturaCalculadora extends StatefulWidget {
  @override
  _AlturaCalculadoraState createState() => _AlturaCalculadoraState();
}
///Crea la logica
class _AlturaCalculadoraState extends State<AlturaCalculadora> {
  final double gravedad = 9.81;
  double tiempo = 0.0;
  double altura = 0.0;

  void calcularAltura() {
    setState(() {
      altura = 0.5 * gravedad * pow(tiempo, 2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Altura',
       style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: 'Nosifer',
            color: const Color.fromARGB(255, 235, 229, 231)
        ), ),
      ),
      body: Center(
        child: Padding(
          //Centrar
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Ingrese el tiempo en segundos:',
                style: TextStyle(fontSize: 18, fontFamily: 'SedgwickAveDisplay'),
              ),
              SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  //Agarrar TEXTO
                  tiempo = double.tryParse(value) ?? 0;
                },
                decoration: InputDecoration(
                  labelText: 'Tiempo (Segundos)',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  calcularAltura();
                },
                child: Text('Calcular Altura'),
              ),
              SizedBox(height: 20),
              Text(
                'Altura calculada:',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '$altura m',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


