import 'package:flutter/material.dart';
import 'package:flutter01/shared/constants.dart';
import 'package:flutter01/shared/qCounter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: uiColors,
          title: const Text("Multi-platform"),
          elevation: 0,
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraint) {
            if (constraint.maxWidth > 600) {
              return _lanscapeUI(context);
            } else {
              return _portraitUI(context);
            }
          },
        ));
  }

  Stack _portraitUI(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: const Image(
            image: AssetImage("assets/migpro.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        Opacity(
          opacity: 0.85,
          child: Container(
            decoration: gradientColor(),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.transparent,
          child: loginButtons(context),
        ),
      ],
    );
  }

  BoxDecoration gradientColor() {
    return const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: uiGradient));
  }

  Container _lanscapeUI(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .65,
            child: Image(
              image: AssetImage("assets/migpro.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .35,
            decoration: gradientColor(),
            child: loginButtons(context),
          )
        ],
      ),
    );
  }

  Column loginButtons(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            child: const Text("Login to Google")),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {},
            child: const Text("Login to Facebook")),
        const SizedBox(
          height: 10,
        ),
        QCounter(),
        const SizedBox(
          height: 10,
        ),
        QCounter(),
        const SizedBox(
          height: 10,
        ),
        QCounter(),
      ],
    );
  }
}
