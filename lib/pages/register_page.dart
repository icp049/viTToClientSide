import 'package:flutter/material.dart';
import 'package:vitto/components/login_textfield.dart';
import 'package:vitto/components/login_button.dart'; // Assuming you have a LoginButton widget

class RegisterPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController displaynameController = TextEditingController();
  final TextEditingController schoolnameController = TextEditingController();

  RegisterPage({Key? key}) : super(key: key);

  void register(){}

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
                hintText: "username",
                obscureText: false,
                controller: usernameController,
              ),

              const SizedBox(height: 10),

              // Password Text Field
              LoginTextField(
                hintText: "display name",
                obscureText: true,
                controller: displaynameController,
              ),

                const SizedBox(height: 10),


              LoginTextField(
                hintText: "School",
                obscureText: true,
                controller: schoolnameController,
              ),

                const SizedBox(height: 10),

            

              const SizedBox(height: 20),

              LoginButton(
                text: "Create Account",
                onTap: () {}, // Here you should provide a function for login functionality
              ),


               const SizedBox(height: 20),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Add navigation logic for registration page
                    },
                    child: Text(
                      " Login here",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
