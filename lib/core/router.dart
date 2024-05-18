import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:examen2_christopher_61821045/screens/book_list_screen.dart';
import 'package:examen2_christopher_61821045/screens/book_detail_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => BookListScreen(),
    ),
    GoRoute(
      path: '/bookDetails',
      builder: (context, state) => BookDetailScreen(),
    ),
  ],
);
