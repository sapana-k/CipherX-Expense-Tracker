import 'package:cipherx/constants/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/category_screen/category_fetcher.dart';
import '../widgets/expense_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const name = '/category_screen'; // for routes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      bottomNavigationBar: MyBottomNavigationBar(selectedIndex: 0),
      body: const CategoryFetcher(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (_) => const ExpenseForm(),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}