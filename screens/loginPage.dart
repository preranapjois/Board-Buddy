import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../main.dart'; // For routeSubjects if using centralized route constants

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isSignUp = true;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  bool _obscurePassword = true;

  bool isValidEmail(String email) => email.endsWith('@gmail.com');

  bool isValidPassword(String password) {
    return password.length >= 8 &&
        password.contains(RegExp(r'[A-Z]')) &&
        password.contains(RegExp(r'[!@#\\$%^&*(),.?":{}|<>]'));
  }

  Future<void> _submit() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    final name = _nameController.text.trim();

    if (_formKey.currentState!.validate()) {
      try {
        final usersRef = FirebaseFirestore.instance.collection('users');
        final querySnapshot = await usersRef.where('email', isEqualTo: email).get();

        if (isSignUp) {
          if (querySnapshot.docs.isEmpty) {
            await usersRef.add({
              'name': name,
              'email': email,
              'password': password,
              'timestamp': FieldValue.serverTimestamp(),
            });
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Sign up successful. You can now sign in.')),
            );
            setState(() {
              isSignUp = false;
              _emailController.clear();
              _passwordController.clear();
              _nameController.clear();
            });
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('User already registered. Please sign in.')),
            );
          }
        } else {
          if (querySnapshot.docs.isNotEmpty) {
            final user = querySnapshot.docs.first.data();
            if (user['password'] == password) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Sign in successful.')),
              );
              Future.delayed(const Duration(milliseconds: 500), () {
                Navigator.pushReplacementNamed(context, routeSubjects);
              });
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Incorrect password.')),
              );
            }
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('User not registered. Please sign up first.')),
            );
          }
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isSignUp ? 'Sign Up' : 'Sign In'),
        backgroundColor: const Color(0xFF6A5ACD),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              if (isSignUp)
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Name'),
                  validator: (value) => value!.isEmpty ? 'Enter your name' : null,
                ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) =>
                    !isValidEmail(value!) ? 'Enter valid Gmail (@gmail.com)' : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _passwordController,
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                ),
                validator: (value) => !isValidPassword(value!)
                    ? 'Min 8 chars, 1 uppercase, 1 special char'
                    : null,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _submit,
                child: Text(isSignUp ? 'Sign Up' : 'Sign In'),
              ),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () {
                  setState(() {
                    isSignUp = !isSignUp;
                    _emailController.clear();
                    _passwordController.clear();
                    _nameController.clear();
                  });
                },
                child: Text(
                  isSignUp
                      ? 'Already have an account? Sign In'
                      : 'Don\'t have an account? Sign Up',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
