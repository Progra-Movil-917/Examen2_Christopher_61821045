import 'villain.dart';

class Book {
  final int id;
  final int year;
  final String title;
  final String handle;
  final String publisher;
  final String isbn;
  final int pages;
  final List<String> notes;
  final List<Villain> villains;
  final String author;

  Book({
    required this.id,
    required this.year,
    required this.title,
    required this.handle,
    required this.publisher,
    required this.isbn,
    required this.pages,
    required this.notes,
    required this.villains,
    required this.author,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'] ?? 0,
      year: json['Year'] ?? 0,
      title: json['Title'] ?? 'Título Desconocido',
      handle: json['handle'] ?? '',
      publisher: json['Publisher'] ?? '',
      isbn: json['ISBN'] ?? '',
      pages: json['Pages'] ?? 0,
      notes: List<String>.from(json['Notes'] ?? []),
      villains: (json['villains'] as List<dynamic>?)
          ?.map((villainJson) => Villain.fromJson(villainJson))
          .toList() ?? [],
      author: json['Author'] ?? 'Autor Desconocido',
    );
  }
}
