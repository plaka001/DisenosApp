import 'package:disenos_app/screens/diseno_basico.dart';
import 'package:disenos_app/screens/menu.dart';
import 'package:disenos_app/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const Center(
        child: Text('HolaMundo'),
      ),
      initialRoute: 'menu',
      routes: {
        'basic': (_) => const BasicScreen(),
        'ScrollScreen': (_) => const ScrollScreen(),
        'menu': (_) => const MenuScreen(),
      },
    );
  }
}
