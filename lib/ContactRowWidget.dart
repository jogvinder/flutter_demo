import 'package:flutter/material.dart';

class ContactRowWidget extends StatelessWidget {
  const ContactRowWidget({
    Key key,
    @required this.name,
  }) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
       if (name == "A" ||
        name == "B" ||
        name == "C" ||
           name == "D" ||
        name == "E" ||
        name == "F" ||
        name == "G" ||
        name == "H" ||
        name == "I" ||
        name == "J" ||
        name == "K" ||
        name == "L" ||
        name == "M" ||
        name == "N" ||
        name == "O" ||
        name == "P" ||
        name == "Q" ||
        name == "R" ||
        name == "S" ||
        name == "T" ||
        name == "U" ||
        name == "V" ||
        name == "W" ||
        name == "X" ||
        name == "Y" ||
        name == "Z")
      return Container(
          color: Color(0xfff6f6f6),
          child: Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30.0),
              child: Text(
                name,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "tcb"),
              )));
    else
      return Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 70.0,
              child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text(
                        name,
                        style: TextStyle(
                            color: Color(0xff565964),
                            fontFamily: "tcb",
                            fontSize: 20.0),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text(
                        "Short Description",
                        style: TextStyle(
                            color: Color(0xff565964),

                            fontSize: 15.0),
                      ),
                    ),
                  ),
//                  Padding(
//                    padding: const EdgeInsets.only(right: 30.0),
//                    child: Text(
//                      countries[position].CountryCode,
//                      style: TextStyle(fontFamily: "tcb", fontSize: 20.0),
//                    ),
//                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Divider(
                thickness: 1.0,
                height: 5.0,
                color: Color(0xffecebe7),
              ),
            )
          ],
        ),
      );
  }
}