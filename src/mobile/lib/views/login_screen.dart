import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:asky/widgets/styled_button.dart';
import 'package:asky/api/authentication_api.dart';
import 'package:asky/constants.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final AuthenticationApi authenticationApi = AuthenticationApi();

  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Constants.gradientTop, Constants.gradientBottom],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  Image.asset("assets/logo.png", width: 300),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Entrar",
                          style: GoogleFonts.notoSans(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 30),
                        _buildTextField(emailCtrl, 'Email', context),
                        SizedBox(height: 20),
                        _buildTextField(passCtrl, 'Senha', context,
                            isPassword: true),
                        SizedBox(height: 30),
                        StyledButton(
                          onPressed: () async {
                            try {
                              String role = await authenticationApi.signIn(
                                  emailCtrl.text, passCtrl.text);
                              if (role == 'nurse') {
                                Navigator.pushNamed(context, '/nurse');
                              } else if (role == 'agent') {
                                Navigator.pushNamed(context, '/pharmacy_home');
                              } else {
                                throw Exception('Unknown role');
                              }
                            } catch (e) {
                              showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  title: Text('Login Failed'),
                                  content: Text('$e'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(ctx).pop();
                                      },
                                      child: Text('OK'),
                                    ),
                                  ],
                                ),
                              );
                            }
                          },
                          text: "Entrar",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
      TextEditingController controller, String label, BuildContext context,
      {bool isPassword = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.notoSans(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 5),
        TextField(
          controller: controller,
          obscureText: isPassword,
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            labelStyle: const TextStyle(color: Colors.white),
            filled: true,
            fillColor: Colors.white,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
      ],
    );
  }
}
