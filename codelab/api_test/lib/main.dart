import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/location.dart';
import 'pages/products.dart';
import 'pages/login.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Home(),
      '/location': (context) => const Location(),
      '/products': (context) => const Products(),
      '/login': (context) => const Login()
    },
  ));
}
