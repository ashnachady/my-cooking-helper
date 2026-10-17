import 'package:flutter/material.dart';
import 'package:my_cooking_helper/core/utils/responsive.dart';
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
          top:
              responsiveHeight(context, 3) + MediaQuery.of(context).padding.top,
          bottom: responsiveHeight(context, 3),
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: responsiveWidth(context, 13),
              backgroundColor: Theme.of(context).colorScheme.onTertiary,
              child: Icon(
                Icons.person,
                size: responsiveFontSize(context, 70),
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
            SizedBox(height: responsiveHeight(context, 1.5)),
            Text(
              "Name Surname",
              style: TextStyle(
                fontSize: responsiveFontSize(context, 24),
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
            Text(
              "email@gmail.com",
              style: TextStyle(
                fontSize: responsiveFontSize(context, 18),
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget buildMenuItems(BuildContext context) => Container(
    padding: EdgeInsets.all(responsiveWidth(context, 6)),
    child: Wrap(
      runSpacing: responsiveHeight(context, 2),
      children: [
        ListTile(
          leading: Icon(
            Icons.home_outlined,
            size: responsiveFontSize(context, 28),
          ),
          title: Text(
            "Home",
            style: TextStyle(fontSize: responsiveFontSize(context, 18)),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => HomeScreen()),
            );
          },
        ),
        ListTile(
          leading: Icon(
            Icons.kitchen_outlined,
            size: responsiveFontSize(context, 28),
          ),
          title: Text(
            "My Pantry",
            style: TextStyle(fontSize: responsiveFontSize(context, 18)),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => MyPantryScreen()),
            );
          },
        ),
        ListTile(
          leading: Icon(
            Icons.menu_book_outlined,
            size: responsiveFontSize(context, 28),
          ),
          title: Text(
            "Recipes",
            style: TextStyle(fontSize: responsiveFontSize(context, 18)),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => RecipesScreen()),
            );
          },
        ),
        Divider(color: Theme.of(context).colorScheme.secondary, thickness: 1.5),
        ListTile(
          leading: Icon(
            Icons.logout_outlined,
            size: responsiveFontSize(context, 28),
          ),
          title: Text(
            "Log Out",
            style: TextStyle(fontSize: responsiveFontSize(context, 18)),
          ),
          onTap: logout,
        ),
      ],
    ),
  );
}
