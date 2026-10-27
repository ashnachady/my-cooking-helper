import 'package:flutter/material.dart';
import 'package:my_cooking_helper/core/utils/responsive.dart';
import 'package:my_cooking_helper/customWidgets/customButton.dart';
import 'package:my_cooking_helper/customWidgets/customDropdownMenu.dart';
import 'package:my_cooking_helper/customWidgets/customTextfield.dart';
import 'package:my_cooking_helper/screens/myPantry.dart';

class Addingredient extends StatefulWidget {
  const Addingredient({super.key});

  @override
  State<Addingredient> createState() => _AddingredientState();
}

class _AddingredientState extends State<Addingredient> {
  final TextEditingController _ingredientController = TextEditingController();
  final TextEditingController _ingCategoryController = TextEditingController();
  final TextEditingController _ingQuantityController = TextEditingController();
  final TextEditingController _ingQuanTypeController = TextEditingController();

  @override
  void dispose() {
    _ingredientController.dispose();
    _ingCategoryController.dispose();
    _ingQuantityController.dispose();
    _ingQuanTypeController.dispose();
    super.dispose();
  }

  void addIngredient() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => MyPantryScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          "Add Ingredient",
          style: TextStyle(fontSize: responsiveFontSize(context, 24)),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight(context),
          padding: EdgeInsets.symmetric(
            horizontal: responsiveWidth(context, 8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Ingredient name text(searchable from database)
              CustomTextfield(
                hintText: "Ingredient",
                obcureText: false,
                controller: _ingredientController,
                icon: Icons.breakfast_dining_outlined,
              ),
              SizedBox(height: screenHeight(context) * 0.04),
              // Ingredient Category added directly if ingredient name added
              CustomTextfield(
                hintText: "Category",
                obcureText: false,
                controller: _ingCategoryController,
                icon: Icons.category_outlined,
              ),
              SizedBox(height: screenHeight(context) * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomTextfield(
                      hintText: "Quantity",
                      obcureText: false,
                      controller: _ingQuantityController,
                      icon: Icons.numbers_outlined,
                    ),
                  ),
                  Expanded(
                    child: CustomDropdownMenu(
                      hintText: "Unit",
                      icon: Icons.scale_outlined,
                      controller: _ingQuanTypeController,
                      items: const ['Kg', 'G', 'Litre', 'Ml', 'Pcs'],
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight(context) * 0.06),
              // add button
              CustomButton(text: "Add Ingredient", onPressed: addIngredient),
            ],
          ),
        ),
      ),
    );
  }
}
