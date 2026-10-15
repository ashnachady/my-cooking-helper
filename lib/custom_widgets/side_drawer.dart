import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      child: Column(
        children: [
          Container(
            color: Theme.of(context).colorScheme.primary,
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Hello User!")],
            ),
          ),
          // Hello name text
          // email address text
          // divider
          // Home text
          // My Pantry text
          // Recipes Text
          // Account Text
          // logout Text
        ],
      ),
    );
  }
}
