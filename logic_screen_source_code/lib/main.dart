import 'package:flutter/material.dart';
import 'constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth Screen',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: TextTheme(
            display1:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            button: TextStyle(color: kPrimaryColor),
            headline:
                TextStyle(color: Colors.white, fontWeight: FontWeight.normal)),
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/perosn.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    //Breaking News
                    TextSpan(
                      text: "Breaking News\n",
                      style: Theme.of(context).textTheme.display1,
                    ),
                    //Master of Art Banking
                    TextSpan(
                      text: "MASTER OF ART BANKING",
                      style: Theme.of(context).textTheme.headline,
                    )
                  ]),
                ),
                FittedBox(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 25),
                    padding: EdgeInsets.symmetric(
                      horizontal: 26,
                      vertical: 16,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: kPrimaryColor,
                    ),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "START ENROLLING",
                          style: Theme.of(context).textTheme.button.copyWith(
                                color: Colors.black,
                              ),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
