import 'package:flutter/material.dart';
import 'package:owala_app/utils/consts.dart';
import 'package:owala_app/utils/validators.dart';
import 'package:owala_app/views/auth/components/auth_button.dart';
import 'package:owala_app/views/auth/components/auth_form_field.dart';
import 'package:owala_app/views/auth/components/social_auth_button.dart';

class LoginScreen extends StatelessWidget {
  // fungsinya untuk memanggil sebuah validator dari setiap form
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 250,
            color: Colors.grey[300], 
            child: Image.asset("assets/images/bgnb.png", fit: BoxFit.cover),
          ),
          
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.83,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
                 boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, -4),
                  )
                ],
              ),
              
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Text(
                      "Sign In To Continue",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Log in by completing the form below",
                      style: TextStyle(fontSize: 16, color: textColor),
                    ),
                    SizedBox(height: 10),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          AuthFormField(
                            controller: _emailController,
                            label: "",
                            hintText: "Enter your Email",
                            validator: Validators.validatEmail,
                          ),
                          SizedBox(height: 8),
                          AuthFormField(
                            controller: _passwordController,
                            label: "",
                            hintText: "Enter your password",
                            obscureText: true,
                            suffixIcon: Icon(Icons.visibility_off),
                            validator: Validators.validatePassword,
                          ),
                          SizedBox(height: 10),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child: Text("Forgot Password"),
                            ),
                          ),
                          SizedBox(height: 20),
                          AuthButton(
                            text: "Sign In",
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushReplacementNamed(
                                  context,
                                  '/catalogue',
                                );
                              }
                            },
                            backgroundColor: primaryColor,
                            textColor: Colors.white,
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                child: Divider(thickness: 1, color: textColor),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Text(
                                  "or",
                                  style: TextStyle(color: textColor),
                                ),
                              ),
                              Expanded(
                                child: Divider(thickness: 1, color: textColor),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          SocialAuthButton(
                            assetIcon: "assets/icons/google_logo.svg",
                            label: "Sign in with Google",
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            onPressed: () {},
                          ),
                          SizedBox(height: 20),
                          SocialAuthButton(
                            assetIcon: "assets/icons/apple_logo.svg",
                            label: "Sign in with Apple",
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            onPressed: () {},
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account?",
                                style: TextStyle(color: textColor),
                              ),
                              TextButton(
                                onPressed: () =>
                                    Navigator.pushNamed(context, '/register'),
                                child: Text("Register"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
