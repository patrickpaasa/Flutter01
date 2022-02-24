import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';


class CustCards extends StatefulWidget {
  final String prodname;
  final List<Color> colors;
  const CustCards({Key? key, this.prodname = "", required this.colors})
      : super(key: key);

  @override
  State<CustCards> createState() => _CustCardsState();
}

class _CustCardsState extends State<CustCards> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        height: 100,
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
                width: 30,
                height: 30,
                child: const Image(
                  image: AssetImage("assets/addu-logo.png"),
                  // image: NetworkImage(
                  //     "https://randomuser.me/api/portraits/med/men/75.jpg"),
                  fit: BoxFit.cover,
                )),
                SizedBox(height: 15,),
            GradientText(
              widget.prodname,
              gradientDirection: GradientDirection.ltr,
              style: TextStyle(fontSize: 15),
              colors: widget.colors,
            ),
            Text("aklsdfklajsdfjasdlfkj", )
          ],
        ),
      ),
    );
  }
}
