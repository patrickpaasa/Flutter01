import 'package:flutter/material.dart';
import 'package:flutter01/shared/Constants.dart';

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
            if (constraint.maxWidth > 800) {
              return Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .65,
                      child: Image(image: AssetImage("assets/migpro.jpeg"),
                        fit: BoxFit.cover,),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .35,
                      color: uiColors[20],
                      child: loginButtons(),
                    )
                  ],
                ),
              );
            } else {
              return Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width, 
                    child:  Image(image: AssetImage("assets/migpro.jpeg"),
                    fit: BoxFit.fitHeight,),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Container(
                      color: uiColors,
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width, 
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.transparent,
                    child: loginButtons(),
                  ),
                   
                ],
              );
              // return Container(
              //   width: MediaQuery.of(context).size.width,
              //   color: Colors.green[100],
              //   child: loginButtons(),
              // );
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
