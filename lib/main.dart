import 'package:flutter/material.dart';
import 'package:examen2_christopher_61821045/screens/not_found_screen.dart';
import 'package:examen2_christopher_61821045/screens/home_screen.dart';
import 'package:examen2_christopher_61821045/screens/book_list_screen.dart';
import 'package:examen2_christopher_61821045/screens/book_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tu App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/bookList': (context) => BookListScreen(),
        '/bookDetails': (context) => BookDetailScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (_) => NotFoundScreen());
      },
    );
  }
}
