import 'package:flutter/material.dart';
import 'package:my_cooking_helper/core/utils/responsive.dart';
import 'package:my_cooking_helper/customWidgets/customDataSquare.dart';
import 'package:my_cooking_helper/customWidgets/sideDrawer.dart';
import 'package:my_cooking_helper/screens/addIngredient.dart';

class MyPantryScreen extends StatefulWidget {
  const MyPantryScreen({super.key});

  @override
  State<MyPantryScreen> createState() => _MyPantryScreenState();
}

class _MyPantryScreenState extends State<MyPantryScreen> {
  final List _dataList = [
    'DataList 1',
    'DataList 2',
    'DataList 3',
    'DataList 4',
    'DataList 5',
    'DataList 1',
    'DataList 2',
    'DataList 3',
    'DataList 4',
    'DataList 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(
          "My Pantry",
          style: TextStyle(fontSize: responsiveFontSize(context, 24)),
        ),
      ),
      drawer: SideDrawer(),
      body: ListView.builder(
        itemCount: _dataList.length,
        itemBuilder: (context, index) {
          return CustomDatasquare(child: _dataList[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => Addingredient()),
        ),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        tooltip: 'Add Ingredient',
        child: Icon(Icons.add),
      ),
    );
  }
}
