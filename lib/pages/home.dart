import 'package:flutter/material.dart';

import 'inicio.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _item = 0;
  //aqui va la logica de la funcionalidad
  getDrawerItemWidget(int pos){
    switch (pos){
      case 0: return Inicio();
      case 1: return MyApp();
      case 2: return Page2();
      case 3: return Page3();
    }
  }

  void _setItemDrawer(int position){
    Navigator.pop(context); //Cierra el drawer
    setState(() {
      _item = position;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Themes and Font styles'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
              ),
              child: Text(
                'Mercy Ibañez',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              selected: (0 == _item),
              leading: Icon(Icons.home,
                color: Colors.pinkAccent,),
              title: Text('Home'),
              onTap: (){
                _setItemDrawer(0);
              },
            ),
            Divider(color: Colors.brown,),
            ListTile(
              selected: (1 == _item),
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('Pagina 1'),
              onTap: (){
                _setItemDrawer(1);
              },
            ),
            Divider(color: Colors.brown,),
            ListTile(
              selected: (2 == _item),
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('Pagina 2'),
              onTap: (){
                _setItemDrawer(2);
              },
            ),
            Divider(color: Colors.brown,),
            ListTile(
              selected: (3 == _item),
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('Pagina 3'),
              onTap: (){
                _setItemDrawer(3);
              },
            ),
          ],
        ),
      ),
      body: getDrawerItemWidget(_item),
    );
  }
}