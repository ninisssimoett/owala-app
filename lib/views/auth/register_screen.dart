import 'package:flutter/material.dart';
import 'package:owala_app/utils/consts.dart';
import 'package:owala_app/utils/validators.dart';
import 'package:owala_app/views/auth/components/auth_button.dart';
import 'package:owala_app/views/auth/components/auth_form_field.dart';

class RegisterScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background warna (optional bisa pake gradient juga)
          Container(color: Colors.grey[200]),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.85,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                ),
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
                    const SizedBox(height: 30),
                    Text(
                      "Register",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Create your account and explore the app",
                      style: TextStyle(fontSize: 16, color: textColor),
                    ),
                    const SizedBox(height: 30),
                    Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AuthFormField(
                            controller: _nameController,
                            label: "Full name",
                            hintText: "Enter your full name",
                            validator: Validators.validateFullName,
                          ),
                          const SizedBox(height: 20),
                          AuthFormField(
                            controller: _emailController,
                            label: "Email",
                            hintText: "Enter your Email",
                            keyboardType: TextInputType.emailAddress,
                            validator: Validators.validatEmail,
                          ),
                          const SizedBox(height: 20),
                          AuthFormField(
                            controller: _passwordController,
                            label: "Password",
                            hintText: "Enter your Password",
                            obscureText: true,
                            suffixIcon: Icon(Icons.visibility),
                            validator: Validators.validatePassword,
                          ),
                          const SizedBox(height: 20),
                          AuthFormField(
                            controller: _confirmController,
                            label: "Confirm Password",
                            hintText: "Confirm your Password",
                            obscureText: true,
                            suffixIcon: Icon(Icons.visibility),
                            validator: (value) =>
                                Validators.validatConfirmPassword(
                              value,
                              _passwordController.text,
                            ),
                          ),
                          const SizedBox(height: 50),
                          AuthButton(
                            text: "Sign up",
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushReplacementNamed(
                                    context, '/catalogue');
                              }
                            },
                            backgroundColor: primaryColor,
                            textColor: Colors.white,
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextStyle(
                                  color: textColor,
                                ),
                              ),
                              TextButton(
                                onPressed: () =>
                                    Navigator.pushNamed(context, '/login'),
                                child: const Text("Sign in"),
                              ),
                             
                            ],
                          )
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