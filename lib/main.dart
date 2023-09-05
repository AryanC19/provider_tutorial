// ignore_for_file: prefer_const_constructors
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:provider_tutorial/home.dart';
import 'package:provider_tutorial/list_provider.dart';
import 'package:provider_tutorial/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumberListProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
