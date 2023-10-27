import 'package:flutter/material.dart';
import 'package:evaluacion_mer/blocs/theme.dart';
import 'package:provider/provider.dart';


class Page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

final theme = Provider.of<ThemeChanger>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Evaluacion final',
        style: TextStyle(
             fontWeight: FontWeight.bold,
             fontSize: 30,
             fontFamily: 'RobotoCondensed' ,
             color: Color.fromARGB(255, 235, 233, 235),),
              ),
      ),
body: Botones(),
  floatingActionButton: FloatingActionButton(
    child: Icon( Icons.home),
    onPressed: () => theme.setTheme(ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.pinkAccent,
      floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.pinkAccent )
    )),
    )
    );
  }

}
class Botones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
final theme = Provider.of<ThemeChanger>(context);

    return Column(
children: <Widget> [
  SizedBox(height: 20, width: 80,),
  FloatingActionButton(

    child: Text('Light', ),
    onPressed: () => theme.setTheme(ThemeData.light()),
  ),
  SizedBox(height: 20, width: 80,),
   FloatingActionButton(
    child: Text('dark'),
    onPressed: ()  => theme.setTheme(ThemeData.dark()),
  ),
],
    );
  }
}