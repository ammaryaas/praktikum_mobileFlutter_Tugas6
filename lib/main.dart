import 'package:flutter/material.dart';
import 'package:h1d023091_tugas6/ui/form_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Input Data',
      home: FormData(),
    );
  }
}
