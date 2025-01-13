import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homepage.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Homepage()),
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 110, 20, 110),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Create Account",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 40),
                TextFields(
                  label: 'Full Name',
                  icon: const Icon(Icons.person),
                  controller: _nameController,
                ),
                const SizedBox(height: 10),
                TextFields(
                  label: 'Email',
                  icon: const Icon(Icons.email),
                  controller: _emailController,
                ),
                const SizedBox(height: 10),
                TextFields(
                  label: 'Password',
                  secureText: true,
                  icon: const Icon(Icons.lock),
                  controller: _passwordController,
                ),
                const SizedBox(height: 10),
                TextFields(
                  label: 'Confirm Password',
                  secureText: true,
                  icon: const Icon(Icons.password),
                  controller: _confirmpasswordController,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Handle sign-up logic
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: Colors.blue,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Sign up',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.arrow_forward,
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextFields extends StatelessWidget {
  final Icon icon;
  final String label;
  final TextEditingController controller;
  final bool secureText;

  const TextFields({
    super.key,
    required this.icon,
    required this.label,
    required this.controller,
    this.secureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: secureText,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: icon,
          border: InputBorder.none,
          labelStyle: const TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}