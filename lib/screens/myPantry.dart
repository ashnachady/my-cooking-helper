import 'package:flutter/material.dart';
import 'package:my_cooking_helper/custom_widgets/side_drawer.dart';

class MyPantryScreen extends StatefulWidget {
  const MyPantryScreen({super.key});

  @override
  State<MyPantryScreen> createState() => _MyPantryScreenState();
}

class _MyPantryScreenState extends State<MyPantryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          "My Pantry",
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: SideDrawer(),
    );
  }
}
