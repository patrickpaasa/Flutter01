import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Multi-platform"),
          elevation: 0,
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraint) {
            if (constraint.maxWidth > 600) {
              return Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .65,
                      color: Colors.green[100],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .35,
                      child: loginButtons(),
                    )
                  ],
                ),
              );
            } else {
              return Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.green[100],
                child: loginButtons(),
              );
            }
          },
        ));
  }

  Column loginButtons() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: () {}, child: const Text("Login to Google")),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {},
            child: const Text("Login to Facebook")),
      ],
    );
  }
}
