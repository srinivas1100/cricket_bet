import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
  );
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    //floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(
      horizontal: 22,
      vertical: 20,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: Colors.black),
      gapPadding: 10,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: Colors.black),
      gapPadding: 10,
    ),
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: Colors.blue),
    bodyText2: TextStyle(color: Colors.lightBlue),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
      color: Colors.white,
      elevation: 0,
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(headline6: TextStyle(color: Color(0xff888888),fontSize: 28,))
  );
}

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key, this.text, this.press,
  }) : super(key: key);
  final String text;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.black,
        onPressed: press,
        child: Text( text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}