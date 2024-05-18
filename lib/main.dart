import 'package:flutter/material.dart';
import 'package:examen2_christopher_61821045/core/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Libros de Stephen King',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
