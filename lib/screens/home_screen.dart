import 'package:flutter/material.dart';
import 'package:examen2_christopher_61821045/screens/not_found_screen.dart';
import 'package:examen2_christopher_61821045/screens/book_list_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF696969), // Gris mate
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bienvenido a la lista de libros de Stephen King',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Texto en color blanco
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/bookList');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF86694a)), // Color café
                ),
                child: Text(
                  'Explorar libros',
                  style: TextStyle(
                    color: Colors.grey[300], // Letras en plateado
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
