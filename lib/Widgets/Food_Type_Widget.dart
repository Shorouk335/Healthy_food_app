 import 'package:flutter/material.dart';
import 'package:healthy_food_ui/DetailsPage.dart';
class FoodTypeWidget extends StatelessWidget {
  String? ImgN;
  String? name;
  double salary ;
  FoodTypeWidget({required this.ImgN ,required this.name ,required this.salary});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
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
                        builder: (context) => DetailsPage(ImgName : ImgN, name: name, salary: salary)
                    ));
                  },
                  child: Hero(
                      tag: "$ImgN" ,
                      child:Image(
                        image: AssetImage("images/$ImgN.png"),
                        fit: BoxFit.cover,
                        height: 100,
                        width: 100,
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
      ),
    );
  }
}
