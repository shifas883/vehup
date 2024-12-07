import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vehup/services/authentication/audentication_bloc.dart';
import 'package:vehup/widgets/svgs.dart';
import 'dashboard.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AudenticationBloc, AudenticationState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          Fluttertoast.showToast(
            msg: "Login Successful!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0,
          );
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Dashboard()),
          );
        } else if (state is AuthFailure) {
          Fluttertoast.showToast(
            msg: "Login Failed",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  Container(
                    width: 75,height: 75,
                    decoration: BoxDecoration(
                      color: const Color(0xFF4A0027),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: SvgPicture.string(VehUpSvgs().logo),
                  ),
                  const SizedBox(height: 24.0),

                  const Text(
                    "Login With Your Email\n& Password",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 32.0),

                  TextField(
                    controller: usernameController,
                    decoration: const InputDecoration(
                      labelText: "Email",
                      hintText: "Enter your email",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintStyle: TextStyle(color: Color(0xFF757575)),
                      suffixIcon: Icon(Icons.mail_outline),
                      border: authOutlineInputBorder,
                    ),
                  ),
                  const SizedBox(height: 16.0),

                  TextField(
                    controller: passwordController,
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter your password",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintStyle: const TextStyle(color: Color(0xFF757575)),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                      border: authOutlineInputBorder,
                    ),
                  ),
                  const SizedBox(height: 8),

                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                      },
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Color(0xFF4A0027),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),

                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF4A0027),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onPressed: () {
                        context.read<AudenticationBloc>().add(
                          LoginRequested(
                            usernameController.text,
                            passwordController.text,
                          ),
                        );
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don’t have an account? "),
                      GestureDetector(
                        onTap: () {
                        },
                        child: const Text(
                          "Register",
                          style: TextStyle(
                            color: Color(0xFF4A0027),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

const authOutlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Color(0xFF757575)),
  borderRadius: BorderRadius.all(Radius.circular(8.0)),
);
