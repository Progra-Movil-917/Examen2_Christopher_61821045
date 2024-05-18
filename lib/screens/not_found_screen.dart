import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página no encontrada'),
      ),
      body: Center(
        child: Text('Lo siento, la página solicitada no pudo ser encontrada.'),
      ),
    );
  }
}
