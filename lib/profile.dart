import 'package:flutter/material.dart';
import 'package:spaxer/provider.dart';
//import 'package:provider/provider.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("profile"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            FutureBuilder(
              future: Provider.of(context).auth.getCurrentUser(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return displayUserInformation(context, snapshot);
                } else {
                  return CircularProgressIndicator();
                }
              },
            )
          ]),
        ),
      ),
    );
  }
  Widget displayUserInformation(context, snapshot) {
    
    return Column(
      children: <Widget> [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Name: ${ snapshot.data
          .displayName
          }", style: TextStyle(fontSize: 22),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("email: ${ snapshot.data.email}", style: TextStyle(fontSize: 22),),
        ),
      //  Text("Password: ${ snapshot.data.password}", style: TextStyle(fontSize: 22),),
      ]
    );
    
  }
}
