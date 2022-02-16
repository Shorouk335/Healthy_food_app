import 'package:flutter/material.dart';
import 'package:healthy_food_ui/DetailsPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                      BorderRadius.only(topLeft: Radius.circular(70.0)),
                      color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        FoodType(1, "Spring", "40.50"),
                        FoodType(2, "Salamon", "78.95"),
                        FoodType(3, "Berry", "150.50"),
                        FoodType(4, "Avocado", "99.9"),
                        FoodType(1, "Healthy", "85.50"),
                        FoodType(6, "Meal", "45.00"),
                        FoodType(1, "Spring", "40.50"),
                        FoodType(2, "Salamon", "78.95"),
                        FoodType(3, "Berry", "150.50"),
                        FoodType(4, "Avocado", "99.9"),
                        FoodType(3, "Healthy", "85.50"),
                        FoodType(6, "Meal", "45.00"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );


  }
  Widget FoodType(var index, String? name, var salary) {
    return Padding(
      padding:
      const EdgeInsets.only(top: 10.0, right: 30.0, left: 30.0, bottom: 10.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
        width: MediaQuery.of(context).size.width/1.5,
          child: Row(
            children: [
              InkWell(
                onTap :(){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailsPage(index : index, name: name, salary: salary)
                  ));
                },
                child: Hero(
                    tag: "plate$index" ,
                    child:Image(
                        image: AssetImage("images/plate$index.png"),
                        fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.height/10,
                        width: MediaQuery.of(context).size.width/4,
                    )
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$name Bowl",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    "\$$salary",
                    style: TextStyle(fontSize: 15.0, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
        Icon(
          Icons.add,
          size: 30.0,
        ),
      ]),
    );
  }
}


