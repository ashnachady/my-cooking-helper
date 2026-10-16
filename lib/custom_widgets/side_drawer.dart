import 'package:flutter/material.dart';
import 'package:my_cooking_helper/screens/home.dart';
import 'package:my_cooking_helper/screens/myPantry.dart';
import 'package:my_cooking_helper/screens/recipes.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  void logout() {}

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[buildHeader(context), buildMenuItems(context)],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) => Material(
    color: Theme.of(context).colorScheme.primary,
    child: InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(
          top: 24 + MediaQuery.of(context).padding.top,
          bottom: 24,
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 52,
              backgroundColor: Colors.white54,
              child: Icon(
                Icons.person,
                size: 70,
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "Name Surname",
              style: TextStyle(
                fontSize: 24,
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
            Text(
              "email@gmail.com",
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget buildMenuItems(BuildContext context) => Container(
    padding: const EdgeInsets.all(24),
    child: Wrap(
      runSpacing: 16,
      children: [
        ListTile(
          leading: const Icon(Icons.home_outlined, size: 28),
          title: const Text("Home", style: TextStyle(fontSize: 18)),
          onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => HomeScreen()),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.kitchen_outlined, size: 28),
          title: const Text("My Pantry", style: TextStyle(fontSize: 18)),
          onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => MyPantryScreen()),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.menu_book_outlined, size: 28),
          title: const Text("Recipes", style: TextStyle(fontSize: 18)),
          onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => RecipesScreen()),
          ),
        ),
        const Divider(color: Colors.black54),
        ListTile(
          leading: const Icon(Icons.logout_outlined, size: 28),
          title: const Text("Log Out", style: TextStyle(fontSize: 18)),
          onTap: logout,
        ),
      ],
    ),
  );
}
