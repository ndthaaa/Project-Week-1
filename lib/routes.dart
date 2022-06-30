import 'package:flutter/material.dart';
import 'package:belajar_flutter/screen.dart';
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/signin':
        return MaterialPageRoute(builder: (_) => SignInPage());
    // return MaterialPageRoute(builder: (_) => AboutPage(args));
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignUpPage());
      default:
        return _resetpassword();
    }
  }
  static Route<dynamic> _resetpassword() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Reset Password")),
        body: Center(child: Text('Pengen buat tapi gak sempat mas, maaf ya hehe')),
      );
    });
  }
}