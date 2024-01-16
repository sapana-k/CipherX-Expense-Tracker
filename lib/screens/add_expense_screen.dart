import 'package:flutter/material.dart';
import '../constants/bottom_navigation_bar.dart';
import '../constants/constants.dart';
import '../widgets/category_screen/category_fetcher.dart';
import '../widgets/expense_form.dart';

class AddExpenseScreen extends StatelessWidget {
  const AddExpenseScreen({super.key});
  static const name = '/add_expense_screen'; // for routes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Expense or Income'),
      ),
      bottomNavigationBar: MyBottomNavigationBar(selectedIndex: 1,),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: (){
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (_) => const ExpenseForm(),
                );
              },
              child: Text('Add Expense'),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(kExpenseColor),
            ),
          ),
          ElevatedButton(
              onPressed: (){
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (_) => const ExpenseForm(),
                );
              },
              child: Text('Add Income'),
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(kIncomeColor),
          ),
          )
        ],
      )
    );
  }
}