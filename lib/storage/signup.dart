import 'package:flutter/material.dart';
import 'package:flutter_project_may/storage/login%20using%20shared%20preference.dart';
import 'package:google_fonts/google_fonts.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // To vaildate the entire form
  final formkey = GlobalKey<FormState>();
  var _confirmPassword;
  bool showPassword1 = true;
  bool showPassword2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 18, right: 18, top: 6, bottom: 16),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign Up",
                      style: GoogleFonts.roboto(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Create an account, Its free',
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Email ID',
                          labelText: 'Email ID',
                          isDense: true,
                          border: OutlineInputBorder()),
                      validator: (email) {
                        if (email!.isEmpty) {
                          return 'Field must not be empty!';
                        } else {
                          if (!email.contains('@') && !email.contains('.')) {
                            return 'Enter a valid email';
                          }
                        }
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      obscureText: showPassword1,
                      decoration: InputDecoration(
                          hintText: 'New Password',
                          labelText: 'New Password',
                          isDense: true,
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (showPassword1) {
                                    showPassword1 = false;
                                  } else {
                                    showPassword1 = true;
                                  }
                                });
                              },
                              icon: showPassword1 == true
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off)),
                          border: OutlineInputBorder()),
                      validator: (password) {
                        _confirmPassword = password;
                        if (password!.isEmpty) {
                          return 'Password must not be empty';
                        } else {
                          if (password.length < 6) {
                            return 'password must be greater than 6 characters';
                          }
                        }
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      obscureText: showPassword2,
                      decoration: InputDecoration(
                          hintText: 'Confirm New Password',
                          labelText: 'Confirm New Password',
                          isDense: true,
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (showPassword2) {
                                    showPassword2 = false;
                                  } else {
                                    showPassword2 = true;
                                  }
                                });
                              },
                              icon: showPassword2 == true
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off)),
                          border: OutlineInputBorder()),
                      textInputAction: TextInputAction.continueAction,
                      validator: (confirmPassword) {
                        if (confirmPassword!.isEmpty) {
                          return 'Password must not be empty';
                        } else {
                          if (confirmPassword != _confirmPassword) {
                            return 'Password did not match';
                          }
                        }
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                        minimumSize:
                        MaterialStatePropertyAll(Size(double.infinity, 40)),
                        backgroundColor:
                        MaterialStatePropertyAll(Color(0xff0e5746)),
                      ),
                      onPressed: () {
                        var isVaild = formkey.currentState!.validate();
                        if (isVaild == true) {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (ctx) => LoginPageShared()));
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text(
                              'Successfully Sigin',
                            ),
                            backgroundColor: Colors.green,
                          ));
                        }
                      },
                      child: const Text(
                        "SignUp",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Do you have an account?'),
                TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero, minimumSize: Size.zero),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (ctx) => LoginPageShared()));
                  },
                  child: const Text(
                    'Log in',
                    style: TextStyle(color: Color(0xff0e5746)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}