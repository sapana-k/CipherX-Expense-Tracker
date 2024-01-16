import 'package:cipherx/screens/add_expense_screen.dart';
import 'package:cipherx/screens/profile_screen.dart';
import 'package:cipherx/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/database_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import './firebase_options.dart';
// screens
import './screens/home_screen.dart';
import './screens/expense_screen.dart';
import './screens/all_expenses.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
      ChangeNotifierProvider(
        create: (_) => DatabaseProvider(),
        child: const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SignUpScreen.name,
      routes: {
        HomeScreen.name: (_) => const HomeScreen(),
        ExpenseScreen.name: (_) => const ExpenseScreen(),
        AllExpenses.name: (_) => const AllExpenses(),
        AddExpenseScreen.name: (_) => const AddExpenseScreen(),
        SignUpScreen.name: (_) => SignUpScreen(),
      },
    );
  }
}