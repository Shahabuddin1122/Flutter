import 'package:flutter/material.dart';
import 'package:trip/pages/Home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Home(),
    },
  ));
}
