// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:spaxer/Home/home.dart';
// import 'package:spaxer/Signin/Signin_screen.dart';


// import '../theme.dart';

// class Signup extends StatelessWidget {
//   static const String idScreen = "Signup";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(),
//       body: SigninScreen(),
//     );
//   }
// }

// class SigninScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SingleChildScrollView(
//         child: Column(children: [
//           Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//             Text(
//               "Welcome to ",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 18,
//               ),
//             ),
//             Text(
//               "Spaxer",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ]),
//           SizedBox(
//             height: 20,
//           ),
//           SignupForm(),
//           SizedBox(
//             height: 20,
//           ),
//           LoginBtn(),
//         ]),
//       ),
//     );
//   }
// }

// class LoginBtn extends StatelessWidget {
//   const LoginBtn({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//       Text(
//         "you have account",
//         style: TextStyle(
//           color: Colors.black,
//           fontSize: 18,
//         ),
//       ),
//       GestureDetector(
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => Signin(),
//             ),
//           );
//         },
//         child: Text(
//           "Signin",
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 28,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     ]);
//   }
// }

// class SignupForm extends StatefulWidget {
//   @override
//   _SignupFormState createState() => _SignupFormState();
// }

// class _SignupFormState extends State<SignupForm> {
//   String email;
//   String password;
//   String name;
//   final _firestore=FirebaseFirestore.instance;
//   final _formKey = GlobalKey<FormState>();
//   FirebaseAuth firebaseAuth = FirebaseAuth.instance;
//   FirebaseFirestore dbRef = FirebaseFirestore.instance;
//   TextEditingController passwordTextEditingController = TextEditingController();
//   TextEditingController phoneTextEditingController = TextEditingController();
//   TextEditingController emailTextEditingController = TextEditingController();
//   TextEditingController nameTextEditingController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Padding(
//         padding: EdgeInsets.symmetric(
//           horizontal: 20,
//         ),
//         child: Column(children: <Widget>[
//           Text(
//             "Signup",
//             style: TextStyle(
//               color: Colors.grey.shade700,
//               fontWeight: FontWeight.w900,
//               fontSize: 30,
//               letterSpacing: 1.0,
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           buildTextNameField(),
//           SizedBox(
//             height: 20,
//           ),
//           buildTextEmailField(),
//           SizedBox(
//             height: 20,
//           ),
//           buildTextPasswordField(),
//           SizedBox(
//             height: 20,
//           ),
//           // buildTextPhoneField(),
//           // SizedBox(
//           //   height: 20,
//           // ),
//           DefaultButton(
//               text: "continue",
//               press: () {
//                // if (_formKey.currentState.validate()) {
//                   FirebaseAuth.instance
//                       .createUserWithEmailAndPassword(
//                           email: emailTextEditingController.text,
//                           password: passwordTextEditingController.text)
//                       .then((signedInUser) {
//                         _firestore.collection('users').add({'email': emailTextEditingController.text, 'pass': passwordTextEditingController.text,} )
//                         .then((value){
//                           if(signedInUser != null) {
//                             Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => IsHomePage(),));
//                           }
//                         })
//                         .catchError((e){
//                           print(e);
//                         });
//                       }
//                       ).catchError((e){
//                         print(e);
//                       });
//                  }
              
//               ),
//         ]),
//       ),
//     );
//   }

//   TextFormField buildTextPasswordField() {
//     return TextFormField(
//       controller: passwordTextEditingController,
//       obscureText: true,
//       validator: (val) => val.length < 6 ? 'enter a password length 6' : null,
//       decoration: InputDecoration(
//         hintText: "Enter your Password",
//         labelText: "Password",
//         floatingLabelBehavior: FloatingLabelBehavior.auto,
//         suffixIcon: Padding(
//             padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
//             child: Icon(Icons.lock)),
//       ),
//     );
//   }

//   TextFormField buildTextPhoneField() {
//     return TextFormField(
//       controller: phoneTextEditingController,
//       decoration: InputDecoration(
//         hintText: "Enter your PhoneNumber",
//         labelText: "Phone Number",
//         floatingLabelBehavior: FloatingLabelBehavior.auto,
//         suffixIcon: Padding(
//             padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
//             child: Icon(Icons.phone)),
//       ),
//     );
//   }

//   TextFormField buildTextEmailField() {
//     return TextFormField(
//     //  keyboardType: TextInputType.emailAddress,
//       controller: emailTextEditingController,
//       validator: (value) {
//         if (value.isEmpty) {
//           return 'Enter an Email Address';
//         } else if (!value.contains('@')) {
//           return 'Please enter a valid email address';
//         }
//         return null;
//       },
//       decoration: InputDecoration(
//         hintText: "Enter your Email",
//         labelText: "email",
//         floatingLabelBehavior: FloatingLabelBehavior.auto,
//         suffixIcon: Padding(
//             padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
//             child: Icon(Icons.mail)),
//       ),
//     );
//   }

//   TextFormField buildTextNameField() {
//     return TextFormField(
//       keyboardType: TextInputType.emailAddress,
//       controller: nameTextEditingController,
//       decoration: InputDecoration(
//         hintText: "Name",
//         labelText: "Name",
//         floatingLabelBehavior: FloatingLabelBehavior.auto,
//         suffixIcon: Padding(
//             padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
//             child: Icon(Icons.person)),
//       ),
//     );
//   }
// }
