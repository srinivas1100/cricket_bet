// import 'package:flutter/material.dart';
// import 'package:spaxer/Signup/Signup_screen.dart';

// import '../theme.dart';

// class ForgetPassword extends StatelessWidget {
//   static const String idScreen = "ForgetPassword";
//   //static String routeName = "/forget_password";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
       
//       ),
//       body: ForgetPasswordScreen(),
//     );
//   }
// }

// class ForgetPasswordScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Welcome to ",
//             style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 18,

//             )
//             ),
//             Text("Spaxer",
//             style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 28,
//                     fontWeight: FontWeight.bold,
//             ),
//             ),
//           ]
//         ),
//         SizedBox(height: 20,),
//         LoginForm(),
//           ] 
//       ),
//       ),
//     );
//   }
// }

// class LoginForm extends StatefulWidget {
//   @override
//   _LoginFormState createState() => _LoginFormState();
// }

// class _LoginFormState extends State<LoginForm> {
//   String email;
//   bool remember = false;
//   @override
//   Widget build(BuildContext context) {
//     return Form(
      
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 20,),
//         child: Column(
//           children: [
//             Text("ForgetPassword",
//             style: TextStyle(
//               color: Colors.black,
//               fontWeight: FontWeight.bold,
//               fontSize: 25,
//               ),
//             ),
//             SizedBox(height: 20,),
//             buildTextEmailField(),
//             SizedBox(height: 20,),
//             DefaultButton(
//               text: "continue",
//               press: () {},
//             ),
//             SizedBox(height: 20),
//             Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("you don't have account",
//             style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 18,

//             ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => Signup(),
//                 ),
//               );
//               },
//                           child: Text("Signup",
//               style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 28,
//                       fontWeight: FontWeight.bold,
//               ),
//               ),
//             ),
//           ]
//         ),
//           ]
//         ),
//       ),
//     );
//   }


//   TextFormField buildTextEmailField() {
//     return TextFormField(
//       keyboardType: TextInputType.emailAddress,
      
//             decoration: InputDecoration(
//               hintText: "Enter your Email",
//               labelText: "email",
//               floatingLabelBehavior: FloatingLabelBehavior.always,
//               suffixIcon: Padding(
//                 padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
//                 child: Icon(
//                   Icons.mail
//                 )
//               ),
//             ),
//           );
//   }
// }
