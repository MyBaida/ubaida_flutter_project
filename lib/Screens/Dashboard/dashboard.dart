import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'components/reusableCard.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Dashbaord extends StatefulWidget {
  const Dashbaord({Key key}) : super(key: key);

  @override
  State<Dashbaord> createState() => _DashbaordState();
}

class _DashbaordState extends State<Dashbaord> {
  List<String> courses = [
    "Software Engineering",
    "Differential equations",
    "Data Structures",
    "Linear Circuits",
    "Electronics",
  ];

  Widget CardTemplate(String CardText) {
    return Card(
      color: kPrimaryLightColor,
      //elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          CardText,
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("DASHBOARD"),
        backgroundColor: kPrimaryColor,
        actions: [
          Center(
            child: Text(
              "Ubaida",
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile_pic.jpg'),
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.35,
              child: Expanded(
                child: ReusableCard(
                  colour: kPrimaryLightColor,
                  cardChild: Row(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset('assets/images/profile.png'),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Text(
                                  "NAME",
                                  style: TextStyle(
                                      color: Colors.red[200],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  "Ubaida",
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Text(
                                  "LEVEL",
                                  style: TextStyle(
                                      color: Colors.red[200],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  "200",
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Text(
                                  "DEPARTMENT",
                                  style: TextStyle(
                                      color: Colors.red[200],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  "CPEN",
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: Colors.white,
                cardChild: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        "ALL COURSES",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.red[200],
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: courses
                            .map((course) => CardTemplate(course))
                            .toList(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        child: Icon(Icons.add),
        onPressed: () {
          Alert(
                  context: context,
                  title: "ADD A COURSE",
                  desc: "Nothing to add yet")
              .show();
        },
      ),
    );
  }
}
