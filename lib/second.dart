import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/home.dart';

import 'list_provider.dart';

class Second extends StatefulWidget {
  @override
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, numbersListProvider, child) => Scaffold(
          appBar: AppBar(),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              numbersListProvider.add();
            },
          ),
          body: SizedBox(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    numbersListProvider.numbers.last.toString(),
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: numbersListProvider.numbers.length,
                    itemBuilder: (context, index) {
                      return Text(
                        numbersListProvider.numbers[index].toString(),
                        style: TextStyle(fontSize: 30),
                      );
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }
}
