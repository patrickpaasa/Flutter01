import 'package:flutter/material.dart';

class QCounter extends StatefulWidget {
  const QCounter({Key? key}) : super(key: key);

  @override
  _QCounterState createState() => _QCounterState();
}

class _QCounterState extends State<QCounter> {
  int number = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    number = 0;
    print("INIT STATE: " + number.toString());
  }

  @override
  Widget build(BuildContext context) {
    print("Building/Rebuilding: " + number.toString());
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
              onPressed: () {
                setState(() {
                  number--;
                });
              },
              child: const Text("-")),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              number.toString(),
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
              onPressed: () {
                setState(() {
                  number++;
                });
              },
              child: const Text("+")),
        ],
      ),
    );
  }
}
