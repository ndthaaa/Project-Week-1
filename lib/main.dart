import 'package:flutter/material.dart';
import 'package:belajar_flutter/routes.dart';
void main() {
  runApp(MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}