import 'package:flutter/material.dart';
import 'package:trip/pages/Home.dart';
import 'package:trip/pages/product.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Home(),
    },
  ));
}
