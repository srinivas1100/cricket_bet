// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:spaxer/Forget/Forget_screen.dart';
// import 'package:spaxer/Signup/Signup_screen.dart';
// import 'package:spaxer/Home/home.dart';

// import '../theme.dart';


// class Signin extends StatelessWidget {
//   static const String idScreen = "Signin";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SigninScreen(),
//     );
//   }
// }

// class SigninScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//              Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Welcome to ",
//             style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 18,

//             ),
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
//         SigninForm(),
//         SizedBox(height: 20,),
        
//         Row(
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
//         ],
        
//         )
//       ),
//     );
//   }
// }

// class SigninForm extends StatefulWidget {
//   @override
//   _SigninFormState createState() => _SigninFormState();
// }

// class _SigninFormState extends State<SigninForm> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
//   String email;
//   String password;
//   bool remeber = false;

//   @override
//   Widget build(BuildContext context) {
//     return Form(
    
//       key: _formKey,

//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 20,),
//         child: Column(
//           children: [
//             Text("Signin",
//             style: TextStyle(
//               color: Colors.black,
//               fontWeight: FontWeight.bold,
//               fontSize: 30,
//               ),
//             ),
//             SizedBox(height: 20,),
//             buildTextEmailField(),
//             SizedBox(height: 20,),
//             buildTextPasswordField(),
//             SizedBox(height: 20,),
//             Row(
//               children: [
                
//                   Spacer(),
//                   GestureDetector(
//                     onTap: () {
//                 Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => ForgetPassword(),
//                 ),
//               );
//               },
//                                       child: Text("ForegetPassword", 
//                     style: TextStyle(
//                       color: Colors.black
//                       ),),
//                   ),
//               ]
//             ),
//             SizedBox(height: 15.0),
//             DefaultButton(
//               text: "continue",
//               press: ()  {
//                 buildSignInWithEmailAndPassword().then((firebaseUser) {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => IsHomePage(),));
//                 });
                
//                 //  Navigator.push(context, MaterialPageRoute(builder: (context) => IsHomePage(),),);
    
               
//               },
//             ),
//           ]
//         ),
//       ),
//     );
//   }

//   Future<UserCredential> buildSignInWithEmailAndPassword() {
//     return FirebaseAuth.instance.signInWithEmailAndPassword(
//                 email : _emailController.text,
//                 password: _passwordController.text
//               );
//   }

//   TextFormField buildTextPasswordField() {
//     return TextFormField(
//       controller: _passwordController,
//             obscureText: true,
//             decoration: InputDecoration(
//               hintText: "Enter your Password",
//               labelText: "Password",
//               floatingLabelBehavior: FloatingLabelBehavior.auto,
//               suffixIcon: Padding(
//                 padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
//                 child: Icon(
//                   Icons.lock
//                 )
//               ),
//             ),
            
//           );
//   }

//   TextFormField buildTextEmailField() {
//     return TextFormField(
//       controller: _emailController,
//       keyboardType: TextInputType.emailAddress,
//       cursorColor: Color(0xFF3C4858),
//             decoration: InputDecoration(
//               hintText: "Enter your Email",
//               labelText: "email",
//               floatingLabelBehavior: FloatingLabelBehavior.auto,
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
