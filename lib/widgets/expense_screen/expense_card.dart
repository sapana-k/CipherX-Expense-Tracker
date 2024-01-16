import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../models/expense_model.dart';
import '../../constants/constants.dart';
import './confirm_box.dart';

class ExpenseCard extends StatelessWidget {
  final Expense exp;
  const ExpenseCard(this.exp, {super.key});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(exp.id),
      confirmDismiss: (_) async {
        showDialog(
          context: context,
          builder: (_) => ConfirmBox(exp: exp),
        );
      },
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(expense_categories[exp.category]),
        ),
        title: Text(exp.title),
        subtitle: Text(DateFormat('MMMM dd, yyyy').format(exp.date)),
        trailing: Text(NumberFormat.currency(locale: 'en_IN', symbol: '₹')
            .format(exp.amount)),
      ),
    );
  }
}