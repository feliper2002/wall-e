import 'package:flutter/material.dart';
import 'package:walle_fteam/walle/walle.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Wall-E',
      debugShowCheckedModeBanner: false,
      home: Walle(),
    );
  }
}
