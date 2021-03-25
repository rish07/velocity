import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  ThemeData _buildTheme(brightness) {
    var baseTheme = ThemeData(
      brightness: brightness,
    );

    return baseTheme.copyWith(
      textTheme: GoogleFonts.poppinsTextTheme(
        baseTheme.textTheme,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: _buildTheme(Brightness.light),
      home: LoginPage(),
    );
  }
}
