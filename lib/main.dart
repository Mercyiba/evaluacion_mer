import 'package:flutter/material.dart';
import 'package:evaluacion_mer/blocs/theme.dart';
import 'package:provider/provider.dart';
import 'pages/home.dart';


void main() {
  //sentencia que hace posible que se ejecute la app y llama la clase myapp
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  //aqui va el diseño al llamar myapp se utiliza el buid
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
  create: (_) => ThemeChanger(ThemeData.dark()),
  child: MaterialAppWithTheme(),
);

  }
}

class MaterialAppWithTheme extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
final theme = Provider.of<ThemeChanger>(context);

    return MaterialApp(
      theme: theme.getTheme(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}
