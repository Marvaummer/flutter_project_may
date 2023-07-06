// import 'package:flutter/material.dart.';
// import 'package:flutter_project_may/Home.dart';
//
// class  Registrationpage extends StatelessWidget {
//   const Registrationpage({ super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Sign Up"),
//       ),
//
//       body: Column(
//         children: [
//           Image.asset("assets/icons/Login-icon.png"),
//          Padding(padding: const EdgeInsets.all(12.0),
//            child: TextField(
//              decoration: InputDecoration(
//                border: OutlineInputBorder(
//                  borderRadius: BorderRadius.circular(30)),
//                hintText: "Username",
//                helperText: "username must be an email",
//                labelText: "UserName",
//                prefixIcon: const Icon(Icons.person)),
//
//            ),
//          ),
//
//         Padding(padding: const EdgeInsets.all(12.0),
//     child: TextField(
//     obscureText: true,
//     decoration: InputDecoration(
//     border: OutlineInputBorder(
//     borderRadius: BorderRadius.circular(30)),
//     hintText: "password",
//     helperText: "password must contains 6 characters",
//     labelText: "Password",
//     prefixIcon: const Icon(Icons.visibility_off_sharp),
//     suffixIcon: const Icon(Icons.visibility)),
//     )
//         ),
//           Padding(padding: const EdgeInsets.all(12.0),
//               child: TextField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30)),
//                     hintText: "Confirm password",
//                     helperText: "password must contains 6 characters",
//                     labelText: "Confirm Password",
//                     prefixIcon: const Icon(Icons.visibility_off_sharp),
//                     suffixIcon: const Icon(Icons.visibility)),
//               )
//           ),
//           ElevatedButton(onPressed: (){
//             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Homepage()));
//           },
//               child:  const Text("Sign Up"),
//           ),
//         ],
//       )
//     );
//   }
// }
