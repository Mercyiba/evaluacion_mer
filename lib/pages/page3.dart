import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.favorite,  // Usamos el icono de corazón
            color: Colors.green,  
            size: 40,  // Puedes ajustar el tamaño del icono
          ),
          Text(
            'Probando un nuevo estilo de letra llamado PlaypenSans',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'PlaypenSans',
              color: Colors.pinkAccent,
            ),
          ),
        ],
      ),
    );
  }
}
