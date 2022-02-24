import 'package:flutter/material.dart';
import 'package:flutter01/models/meals.dart';

class MealCards extends StatelessWidget {
  final Meals meal;
  const MealCards({ Key? key, required this.meal }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      borderOnForeground: true,    
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 3),
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
                child: Image(
                  image: NetworkImage(
                       meal.mealImage),
                  fit: BoxFit.cover,
                )),
            SizedBox(height: 10,),          
            Text(meal.mealName, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),          
          ],
        ),
      ),
    );
  }
}