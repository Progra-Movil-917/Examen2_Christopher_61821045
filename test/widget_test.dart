import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:examen2_christopher_61821045/main.dart';

void main() {
  testWidgets('App should start', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Verifica que la app se inicia mostrando el widget MyApp
    expect(find.byType(MyApp), findsOneWidget);
  });
}
