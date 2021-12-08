import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spaxer/Services/SignSign.dart';
import 'package:spaxer/Services/auth.dart';
import 'package:spaxer/Home/home.dart';
import 'package:spaxer/provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      auth: AuthService(),
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Spaxer',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Color(0xff3a425b),
            elevation: 0,
            brightness: Brightness.dark,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            actionsIconTheme: IconThemeData(
              color: Colors.white,
            ),
          ),
          textTheme: GoogleFonts.merriweatherTextTheme(),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeController(),
        routes: <String, WidgetBuilder> {
          '/signUp': (BuildContext context) => SignUpView(authFormType: AuthFormType.signUp),
            '/signIn': (BuildContext context) => SignUpView(authFormType: AuthFormType.signIn),
            '/home': (BuildContext context) => HomeController(),
        },
      ),
    );
  }
}

class HomeController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthService auth = Provider.of(context).auth;
    return StreamBuilder<String>(
      stream: auth.onAuthStateChanged,
      builder: (context, AsyncSnapshot<String> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final bool signedIn = snapshot.hasData;
          return signedIn ? IsHomePage() : SignUpView(authFormType: AuthFormType.signUp,);
        }
        return CircularProgressIndicator();
      },
    );
  }
}



// 6.37
