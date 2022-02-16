import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  var index;
  String? name;
  var salary;

  DetailsPage({required this.index, required this.name, required this.salary});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  // List num = [0,0,0,0,0];
  // List ContainerColor = [Colors.white,Colors.white,Colors.white,Colors.white,Colors.white];
  // List TextColor = [Colors.black45,Colors.black45,Colors.black45,Colors.black45,Colors.black45];
  //  Change( dynamic index){
  //    setState(() {
  //      if (this.num[index] == 0){
  //        this.ContainerColor[index] = Colors.greenAccent;
  //        this.TextColor[index] = Colors.white ;
  //        num[index]++;
  //      }
  //      else {
  //        this.ContainerColor[index] = Colors.white;
  //        this.TextColor[index] = Colors.black ;
  //        num[index]--;
  //      }
  //    });
  // }
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
                              // padding: EdgeInsets.only(bottom: 15.0),
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadiusDirectional.all(
                                    Radius.circular(20.0)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    child:Text("-",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40.0
                                    ),)
                                  ),
                                  Text(
                                    "2",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30.0),
                                  ),
                                  InkWell(
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
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                ContW(),
                                ContW(),
                                ContW(),
                                ContW(),
                                ContW(),

                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height/10,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0),
                                bottomLeft: Radius.circular(60.0) ,bottomRight: Radius.circular(60.0)
                              )
                            ),
                            child: Center(
                              child: Text(
                                  "\$${this.widget.salary}",style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 30.0
                              ),
                              ),
                            ) ,
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
                  tag: "plate${widget.index}",
                  child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("images/plate${widget.index}.png"),
                              fit: BoxFit.cover)),
                      height: 250.0,
                      width: 250.0))),
        ],
      ),
    );
  }
  Widget ContW (){
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: MediaQuery.of(context).size.width/3.5,
        decoration: BoxDecoration(
          color: Colors.white,
         border: Border.all(color: Colors.grey ,width: 1),
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        child: Column (
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("CALORIES" ,style: TextStyle(
              color: Colors.black45,
              fontSize: 15.0
            ),),
            Text("A, 52",style: TextStyle(
              color: Colors.black45,
              fontSize: 15.0
            ),),
          ],
        ) ,
      ),
    );
  }
}
