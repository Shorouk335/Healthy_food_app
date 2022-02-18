import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthy_food_ui/Model/Details_Data.dart';
import 'package:healthy_food_ui/Widgets/Details_Conwidget.dart';
import 'package:healthy_food_ui/Widgets/Send_Request.dart';

class DetailsPage extends StatefulWidget {
  String? ImgName;
  String? name;
  double salary ;
  DetailsPage({required this.ImgName, required this.name, required this.salary});

  @override
  DetailsPageState createState() => DetailsPageState(final_salary: this.salary);
}

class DetailsPageState extends State<DetailsPage> {
  var num_of_meal = 1;

  double final_salary;

  DetailsPageState({required this.final_salary});

  List DetailsList = [
    DetailsData(name: "Salad", salary: 15.0 ,Colo: Colors.white ,clic: 0 ,Textcolor: Colors.black54),
    DetailsData(name: "Coca Cola", salary: 10.0,Colo: Colors.white,clic: 0,Textcolor: Colors.black54),
    DetailsData(name: "Nuts", salary: 20.0,Colo: Colors.white,clic: 0,Textcolor: Colors.black54),
    DetailsData(name: "Entrees", salary: 25.0,Colo: Colors.white,clic: 0,Textcolor: Colors.black54),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        elevation: 0.0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 30.0,
            color: Colors.white,
          ),
        ),
        title: Text(
          "DetailsPage",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.apps,
              size: 30.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 82.0,
            width: double.infinity,
          ),
          Positioned(
            top: 80.0,
            child:Container(
                  height: MediaQuery.of(context).size.height - 80.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height/5 +30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, bottom: 15.0),
                        child: Row(
                          children: [
                            Text(
                              "${this.widget.name}",
                              style: TextStyle(fontSize: 30.0),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Bowl",
                              style: TextStyle(
                                  fontSize: 30.0, color: Colors.black45),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, bottom: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "\$${this.widget.salary}",
                              style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              child: VerticalDivider(
                                thickness: 2,
                                color: Colors.black54,
                              ),
                            ),
                            Container(
                              width: 130,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadiusDirectional.all(
                                    Radius.circular(20.0)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        if (num_of_meal != 0) {
                                          num_of_meal--;
                                          final_salary =
                                              this.widget.salary * num_of_meal;
                                        }
                                      });
                                    },
                                    child:Text("-",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40.0
                                    ),)
                                  ),
                                  Text(
                                    "$num_of_meal",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30.0),
                                  ),
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        num_of_meal++;
                                        final_salary =this.widget.salary *num_of_meal;
                                      });
                                    },
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white ,
                                        borderRadius: BorderRadiusDirectional.all(Radius.circular(10.0))
                                      ),
                                      child: Center(
                                        child: Text(
                                          "+",
                                          style: TextStyle(
                                              color: Colors.greenAccent, fontSize: 20.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0,bottom: 10.0,right: 20.0,),
                          child: Container(
                           child: ListView.builder(
                             scrollDirection: Axis.horizontal,
                               itemCount: DetailsList.length,
                               itemBuilder: (context ,index) {
                               return InkWell(
                                 onTap: (){
                                   setState(() {
                                     if ( this.DetailsList[index].clic == 0){
                                       this.DetailsList[index].clic++;
                                       this.DetailsList[index].Colo = Colors.greenAccent;
                                       this.DetailsList[index].Textcolor = Colors.white;
                                       this.final_salary+= DetailsList[index].salary;
                                     }
                                     else {
                                       this.DetailsList[index].clic--;
                                       this.final_salary-= DetailsList[index].salary ;
                                       this.DetailsList[index].Colo = Colors.white;
                                       this.DetailsList[index].Textcolor = Colors.black54;
                                     }

                                   });
                                 },
                                 child: DetailsConWidget(
                                   name: DetailsList[index].name,
                                     salary: DetailsList[index].salary ,
                                   ConColor: DetailsList[index].Colo,
                                 TextColor: DetailsList[index].Textcolor,),
                               );

                               }),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return SendRequest();
                            }));
                          },
                          child: Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height/10,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0),
                                  bottomLeft: Radius.circular(60.0) ,bottomRight: Radius.circular(60.0)
                                )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon (Icons.double_arrow ,color: Colors.grey,size: 30,),
                                  SizedBox(width: 10,),
                                  Text(
                                    "\$${final_salary}",style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontSize: 30.0
                                  ),
                                  ),
                                ],

                              ) ,
                            ),
                        ),
                      ),
                      SizedBox(height: 80,),
                    ],
                  )),
            ),
          Positioned(
              top: 10,
              left: MediaQuery.of(context).size.width / 5,
              child: Hero(
                  tag: "${this.widget.ImgName}",
                  child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("images/${this.widget.ImgName}.png"),
                              fit: BoxFit.cover)),
                      height: 250.0,
                      width: 250.0))),
        ],
      ),
    );
  }

}
