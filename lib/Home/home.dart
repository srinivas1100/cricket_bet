import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spaxer/Home/Home_card.dart';
import 'package:spaxer/Services/auth.dart';
import 'package:spaxer/profile.dart';
import 'package:spaxer/provider.dart';

class IsHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: GoogleFonts.merriweather(
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile(),
                ),
              );
            }),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              try {
                AuthService auth = Provider.of(context).auth;
                await auth.signOut();
                print("signout");
              } catch (e) {
                print(e);
              }
            },
            color: Colors.white,
          )
        ],
      ),
       body: HomeCard(),
    );
    
  }
}
