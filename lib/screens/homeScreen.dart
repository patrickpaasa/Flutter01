import 'package:flutter/material.dart';
import 'package:flutter01/shared/constants.dart';
import 'package:flutter01/shared/custCards.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: uiColors,
        title: const Text("Home Screen"),
        elevation: 0,
      ),
      body: Container(
          child: Wrap(
        alignment: WrapAlignment.start,
        direction: Axis.horizontal,
        children: [
          // CustCards(
          //   prodname: "NIKE KYRIE",
          //   colors: [Color(0xFF013172), Color(0xFF12e506)],
          // ),
          // CustCards(
          //     prodname: "NIKE KOBE",
          //     colors: [Color(0xFF614d83), Color(0xFFe12c3e)]),
          Center(
            child: IconButton(
                // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                icon: FaIcon(FontAwesomeIcons.addressBook),
                onPressed: () {
                  print("Pressed");
                }),
          ),
        ],
      )),
    );
  }
}
