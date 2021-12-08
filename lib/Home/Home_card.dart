
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class HomeCard extends StatefulWidget {
  @override
  _HomeCardState createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * .40,
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profil(),
                  ),
                );
                //  bottomSheett(context);
                /*   showBottomSheet(
              context: context,
              builder: (context) => Container(
                height: MediaQuery.of(context).size.height * 0.73,
                    color: Colors.red,
                  ));
                  */
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0)),
                  color: Colors.tealAccent,
                ),
                height: MediaQuery.of(context).size.height * .28,

                //   color: Colors.tealAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * .15,
                              width: MediaQuery.of(context).size.width * .30,
                              //   color: Colors.black,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image: AssetImage("assets/logo.png"),
                                      fit: BoxFit.cover)),
                              //   child: Icon(Icons.menu),
                            ),
                            Text(
                              "Hello",
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text("VS"),
                            Container(
                                //   color: Colors.white,
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Favourite"),
                                SizedBox(height: 5.0),
                                Container(
                                    color: Colors.white, child: Text("Lions")),
                                SizedBox(height: 5.0),
                                Text("22/24"),
                              ],
                            ))
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * .15,
                              width: MediaQuery.of(context).size.width * .30,
                              //   color: Colors.black,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image: AssetImage("assets/logo.png"),
                                      fit: BoxFit.cover)),

                              //   child: Icon(Icons.menu),
                            ),
                            Text("menu")
                          ],
                        ),
                      ]),
                ),
              ),
            ),
            BottomCard(),
          ],
        ),
      ),
    );
  }
}

class BottomCard extends StatelessWidget {
 // final Product product;
  
  const BottomCard({
    Key key,// this.product,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        bottomSheett(context);
      },
      child: Container(
        height: MediaQuery.of(context).size.height * .12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0)),
          color: Colors.black12,
        ),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("Session"),
                  Text("10 Overs"),
                ],
              ),
              Container(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("No"),
                      Text("22"),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Yes"),
                      Text("23"),
                    ],
                  )
                ],
              )),
              Container(
                child: Row(children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Balls"),
                      Text("22"),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Runs"),
                      Text("44"),
                    ],
                  )
                ]),
              ),
            ]),
      ),
    );
  }
}

/*  class Runs extends StatelessWidget {
  
  const Runs({Key key, }) : super(key: key);

  @override
  Widget build(BuildContext context, TextItem textItem, int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          textItem.text1,
        ),
        Text("hey its "),
      ],
    );
  }
}  */


class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height * .90,
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .10,
                    child: Column(
                      children: [
                        Text("Select team"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[Text("hello1"), Text("WOrld2")],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Divider(
                    height: 1.0,
                    color: Colors.black,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("sealect"),
                        Text("Team1"),
                        Text("Team2")
                      ],
                    ),
                  ),
                  Spacer(),
                  Divider(
                    height: 1,
                    color: Colors.black38,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("sealect"),
                        Text("custom"),
                        Text("market")
                      ],
                    ),
                  ),
                  Spacer(),
                  Divider(
                    height: 1,
                    color: Colors.black38,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("range"),
                        Text("team"),
                        Text("Yes"),
                        Text("High")
                      ],
                    ),
                  ),
                  Spacer(),
                  Divider(
                    height: 1,
                    color: Colors.black38,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("Quantity"),
                        Text("5"),
                      ],
                    ),
                  ),
                  Spacer(),
                  Divider(
                    height: 1,
                    color: Colors.black38,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("price"),
                        Text("500"),
                      ],
                    ),
                  ),
                  Spacer(),
                  Divider(
                    height: 1,
                    color: Colors.black38,
                  ),
                  Spacer(),
                  Container(
                    height: MediaQuery.of(context).size.height * .10,
                    child: SliderButton(
                      height: MediaQuery.of(context).size.height * .10,
                      width: MediaQuery.of(context).size.width * .80,
                      action: () {
                        ///Do something here
                        Navigator.of(context).pop();
                      },
                      label: Text(
                        "Slide to cancel Event",
                        style: TextStyle(
                            color: Color(0xff4a4a4a),
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                      icon: Text(
                        "s",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 44,
                        ),
                      ),
                    ),
                  ),
                  Spacer()
                ],
              ),
            ),
          ),
        ));
  }
}

void bottomSheett(context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext _) {
      return Container(
        height: MediaQuery.of(context).size.height * .80,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .10,
              child: Column(
                children: [
                  Text("Select team"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[Text("hello1"), Text("WOrld2")],
                  ),
                ],
              ),
            ),
            Spacer(),
            Divider(
              height: 1,
              color: Colors.black,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("Session"), Text("10 Overs")],
                  ),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("No"),
                              Text("22"),
                            ],
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Yes"),
                              Text("23"),
                            ],
                          ),
                        ]),
                  ),
                  Container(
                    child: Row(children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Balls"),
                          Text("22"),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Runs"),
                          Text("44"),
                        ],
                      )
                    ]),
                  ),
                ],
              ),
            ),
            Spacer(),
            Divider(
              height: 1.0,
              color: Colors.black,
              indent: 20.0,
              endIndent: 20.0,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Range"),
                  Text("low"),
                  Text("Medium"),
                  Text("High")
                ],
              ),
            ),
            Spacer(),
            Divider(
              height: 1.0,
              color: Colors.black,
              indent: 20.0,
              endIndent: 20.0,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Quantity"),
                  Text("5"),
                ],
              ),
            ),
            Spacer(),
            Divider(
              height: 1.0,
              color: Colors.black,
              indent: 20.0,
              endIndent: 20.0,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("price"),
                  Text("500"),
                ],
              ),
            ),
            Spacer(),
            Divider(
              height: 1.0,
              color: Colors.black,
            ),
            Spacer(),
            Container(
                height: MediaQuery.of(context).size.height * .10,
                child: SliderButton(
                  alignLabel: Alignment.center,
                  height: MediaQuery.of(context).size.height * .10,
                  width: MediaQuery.of(context).size.width * .80,
                  action: () {
                    ///Do something here
                    Navigator.of(context).pop();
                  },
                  label: Text(
                    "Slide to cancel Event",
                    style: TextStyle(
                        color: Color(0xff4a4a4a),
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  icon: Text(
                    "s",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 44,
                    ),
                  ),
                )),
            Spacer(),
          ],
        ),
      );
    },
    isScrollControlled: true,
  );
}
