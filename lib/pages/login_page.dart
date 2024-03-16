import 'package:flutter/material.dart';
import 'package:vitto/components/login_textfield.dart';
import 'package:vitto/components/login_button.dart'; // Assuming you have a LoginButton widget

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo here
              Icon(
                Icons.person,
                size: 80,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 25),

              // App name
              Text(
                "v i T T o",
                style: TextStyle(fontSize: 20),
              ),

              const SizedBox(height: 50),

              // Login Text Field
              LoginTextField(
                hintText: "Enter your email",
                obscureText: false,
                controller: emailController,
              ),

              const SizedBox(height: 10),

              // Password Text Field
              LoginTextField(
                hintText: "Enter your password",
                obscureText: true,
                controller: passwordController,
              ),

              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              LoginButton(
                text: "Login",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
