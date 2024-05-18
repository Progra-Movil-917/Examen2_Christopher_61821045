import 'package:flutter/material.dart';
import 'package:examen2_christopher_61821045/services/book_service.dart';
import 'package:examen2_christopher_61821045/models/book.dart';

class BookListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Libros de Stephen King'),
      ),
      body: FutureBuilder<List<Book>>(
        future: getBooks(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final books = snapshot.data!;
            return ListView.builder(
              itemCount: books.length,
              itemBuilder: (context, index) {
                final book = books[index];
                return ListTile(
                  title: Text(book.title),
                  onTap: () {
                    Navigator.pushNamed(context, '/bookDetails', arguments: book);
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
