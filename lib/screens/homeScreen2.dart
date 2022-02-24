import 'package:flutter/material.dart';
import 'package:flutter01/models/meals.dart';
import 'package:flutter01/shared/constants.dart';
import 'package:flutter01/shared/mealCards.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class HomeScreen2 extends StatefulWidget {
  HomeScreen2({ Key? key }) : super(key: key);

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  Meals meal = Meals(1234, "Adobo", "https://www.themealdb.com/images/media/meals/1548772327.jpg");

  Meals meal2 = Meals(1234, "Sinigang", "https:\/\/www.themealdb.com\/images\/media\/meals\/uvuyxu1503067369.jpg");

  List<Meals> meals = [
   
  ];

  
  
  Future<void> loadData() async {
      // Await the http get response, then decode the json-formatted response.
      // var url = Uri.https('https://www.themealdb.com', '/api/json/v1/1/filter.php?c=Beef', {'q': '{http}'});
      var response = await http.get("https://www.themealdb.com/api/json/v1/1/filter.php?c=Beef");
      if (response.statusCode == 200) {
        var jsonResponse =
            convert.jsonDecode(response.body) as Map<String, dynamic>;
        List<Meals> fromJson = [];
        for (var i = 0; i < jsonResponse['meals'].length; i++) {
          Meals ulam = Meals(i,jsonResponse['meals'][i]['strMeal'], jsonResponse['meals'][i]['strMealThumb']);
          fromJson.add(ulam);
        }
        print(fromJson);
        setState(() {
          meals = fromJson;
        });
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
  }


  @override
  void initState() {
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: uiColors,
        title: const Text("Load to List"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            direction: Axis.horizontal,
            children: 
              meals.map((one_meal){
                // print(one_meal.mealName);
                return MealCards(meal: one_meal);
              }).toList(),
        ),
      )
    );
  }
}
