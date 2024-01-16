import 'package:cipherx/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../services/firestore_services.dart';
import '../services/authentication_services.dart';
import 'home_screen.dart';

class SignUpScreen extends StatelessWidget {
  static final String name = '/signup_screen';
  final AuthService _authService = AuthService();
  final FirestoreService _firestoreService = FirestoreService();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/img.png'),
            ),
            Text(
              'CipherX',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontFamily: 'Bruno Ace SC',
                fontWeight: FontWeight.w400,
                letterSpacing: -0.72,
              ),
            ),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                String name = _nameController.text.trim();
                String email = _emailController.text.trim();
                String password = _passwordController.text.trim();

                User? user = await _authService.signUp(email, password);

                if (user != null) {
                  // Successfully signed up, now create user document in Firestore
                  await _firestoreService.createUserDocument(user.uid, name, email);

                  // Store user ID in local storage (Shared Preferences)
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  prefs.setString('userId', user.uid);

                  // Navigate to home screen or any other screen
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                } else {
                  // Handle sign-up failure
                }
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
