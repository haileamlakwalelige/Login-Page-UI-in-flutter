import 'package:flutter/material.dart';
import 'package:login_page_ui/components/my_button.dart';
import 'package:login_page_ui/components/my_textfield.dart';
import 'package:login_page_ui/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final userController = TextEditingController();
  final passwordController = TextEditingController();

  void signInUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              // logo
              Icon(
                Icons.lock,
                size: 100,
              ),

              SizedBox(
                height: 50,
              ),

              // welcome back, you have been missed
              Text(
                "Welcome back you\'ve been missed!",
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),

              // user text field
              MyTextfield(
                controller: userController,
                hintText: "username or email",
                obscureText: false,
              ),

              // password text field
              MyTextfield(
                controller: passwordController,
                hintText: 'password',
                obscureText: true,
              ),

              // forgot password
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 25.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forget password?',
                      style: TextStyle(color: Colors.blue[800]),
                    ),
                  ],
                ),
              ),

              // signin button
              SizedBox(
                height: 25,
              ),

              MyButton(
                onTap: signInUser,
              ),

              SizedBox(
                height: 25,
              ),

              // continue with
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("Or continue with"),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 25,
              ),

              // google + apple sign in buttons
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // image one
                    SquareTile(imagePath: 'lib/images/google.png'),
                    SizedBox(
                      width: 25,
                    ),
                    SquareTile(imagePath: 'lib/images/apple.png'),
                  ],
                ),
              ),

              // not a member, then register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "not a member?",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Register Now",
                    style: TextStyle(
                        color: Colors.blue[500], fontWeight: FontWeight.w600),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
