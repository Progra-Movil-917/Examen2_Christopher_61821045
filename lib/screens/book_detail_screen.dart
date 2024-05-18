import 'package:flutter/material.dart';
import 'package:examen2_christopher_61821045/models/book.dart';

class BookDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Book book = ModalRoute.of(context)!.settings.arguments as Book;
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title: ${book.title}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Author: ${book.author}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Villains:', style: TextStyle(fontSize: 18)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: book.villains.map((villain) => Text(villain.name)).toList(), // Esta es la línea
            ),
          ],
        ),
      ),
    );
  }
}
