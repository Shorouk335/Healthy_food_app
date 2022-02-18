import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthy_food_ui/Model/FoodType.dart';
import 'package:healthy_food_ui/Widgets/Food_Type_Widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List  <FoodType> FoodData = [
    FoodType(name: "Spring", Salary: 40.50,Imgname:"plate1"),
    FoodType(name: "Salamon", Salary: 78.50,Imgname:"plate2"),
    FoodType(name: "Berry", Salary: 150.50,Imgname:"plate3"),
    FoodType(name: "Avocado", Salary: 99.9,Imgname:"plate4"),
    FoodType(name: "Healthy", Salary: 85.50,Imgname: "plate5"),
    FoodType(name: "Meat", Salary: 150.00,Imgname:"plate6"),
    FoodType(name: "Spring", Salary: 40.50 ,Imgname:"plate1"),
    FoodType(name: "Salamon", Salary: 78.50,Imgname:"plate2"),
    FoodType(name: "Berry", Salary: 150.50,Imgname:"plate3"),
    FoodType(name: "Avocado", Salary: 99.9,Imgname:"plate4"),
    FoodType(name: "Healthy", Salary: 85.50,Imgname: "plate5"),
    FoodType(name: "Meat", Salary: 150.0,Imgname:"plate6"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.search,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  Container(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.notifications,
                          size: 30.0,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.apps,
                          size: 30.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 50.0, bottom: 50.0, top: 10.0),
              child: Text(
                "Healthy Food",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(80.0)),
                      color: Colors.white,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: FoodData.length,
                    itemBuilder:(context , index) {
                    return FoodTypeWidget(ImgN: FoodData[index].Imgname,name: FoodData[index].name,salary: FoodData[index].Salary);
                    },
                ),
                ),
              ),
          ],
        ),
      ),
    );


  }

}


