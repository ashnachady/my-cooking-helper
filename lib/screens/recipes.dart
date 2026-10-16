import 'package:flutter/material.dart';
import 'package:my_cooking_helper/custom_widgets/side_drawer.dart';

class RecipesScreen extends StatefulWidget {
  const RecipesScreen({super.key});

  @override
  State<RecipesScreen> createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          "Recipes",
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: SideDrawer(),
    );
  }
}
