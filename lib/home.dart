// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/list_provider.dart';
import 'package:provider_tutorial/second.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<int> numbers = [1, 2, 3, 4];
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
        builder: (context, numbersProviderModel, child) => Scaffold(
              appBar: AppBar(),
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  numbersProviderModel.add();
                },
              ),
              body: Consumer<NumberListProvider>(
                  builder: (context, numbersProviderModel, child) => Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              numbersProviderModel.numbers.last.toString(),
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: numbersProviderModel.numbers.length,
                              itemBuilder: (context, index) {
                                return Text(
                                  numbersProviderModel.numbers[index]
                                      .toString(), // Corrected this line
                                  style: TextStyle(fontSize: 30),
                                );
                              },
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Second(),
                              ));
                            },
                            child: Text("Second"),
                          ),
                        ],
                      )),
            ));
  }
}
