import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:examen2_christopher_61821045/models/book.dart';

Future<List<Book>> getBooks() async {
  final String response = await rootBundle.loadString('assets/data.json');
  final List<dynamic> data = json.decode(response);
  return data.map((json) => Book.fromJson(json)).toList();
}
