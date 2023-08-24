import 'package:express/components/mybutton.dart';
import 'package:express/components/mytextfield.dart';
import 'package:express/components/squaretile.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              //logo
              Icon(
                Icons.lock,
                size: 100,
              ),

              SizedBox(
                height: 50,
              ),

              //welcome back
              Text(
                'Welcome back',
                style: TextStyle(color: Colors.grey[600], fontSize: 16),
              ),
              SizedBox(
                height: 25,
              ),

              //username
              MyTextField(
                controller: usernameController,
                hintText: 'Enter Username',
                obscuretext: false,
              ),
              SizedBox(
                height: 25,
              ),

              //password
              MyTextField(
                controller: passwordController,
                hintText: 'Enter Password',
                obscuretext: true,
              ),
              SizedBox(
                height: 15,
              ),

              //forgot password

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),

              //sign in button
              MyButton(
                onTap: signUserIn,
              ),
              SizedBox(
                height: 20,
              ),

              //or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Text(
                      'Or continue with',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              //google + apple sign in button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //google button
                  SquareTile(image: 'assets/google.png'),
                  SizedBox(
                    width: 20,
                  ),

                  //apple button
                  SquareTile(image: 'assets/apple.png')
                ],
              ),
              SizedBox(
                height: 20,
              ),

              //not a member> register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member? '),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Register now',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
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
