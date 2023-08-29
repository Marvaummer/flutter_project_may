import 'package:flutter/material.dart';
import 'package:flutter_project_may/storage/signup.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: LoginSignupPage(),
  debugShowCheckedModeBanner: false,));
}


class LoginSignupPage extends StatelessWidget {
  const LoginSignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            const Color(0xff36b28a).withOpacity(0.9),
            const Color.fromARGB(255, 5, 68, 53)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/login_image.png',fit: BoxFit.cover,width: 300,height: 300,),
            Column(
              children: [
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Let's Get\nStarted",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Hello There, automatic identity verifaction which enable\nyou to verify identity",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 12,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ElevatedButton(
                style: const ButtonStyle(
                    minimumSize:
                    MaterialStatePropertyAll(Size(double.infinity, 40)),
                    backgroundColor: MaterialStatePropertyAll(Colors.white)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => LoginSignupPage()));
                },
                child: const Text(
                  "Login",
                  style: TextStyle(
                    color: Color(0xff0e5746),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ElevatedButton(
                style: const ButtonStyle(
                    minimumSize:
                    MaterialStatePropertyAll(Size(double.infinity, 40)),
                    backgroundColor:
                    MaterialStatePropertyAll(Color(0xffEDFCF6))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const SignUpPage()));
                },
                child: const Text(
                  "SignUp",
                  style: TextStyle(
                    color: Color(
                      0xff0e5746,
                    ),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}