import 'package:flutter/material.dart';
class DetailsConWidget extends StatelessWidget {
  String? name ;
    double  salary ;
    Color ConColor ;
    Color TextColor ;
    DetailsConWidget({required this.name ,required this.salary ,required this.ConColor,required this.TextColor}) ;
  @override
  Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: MediaQuery.of(context).size.width/3,
          decoration: BoxDecoration(
            color: ConColor,
            border: Border.all(color: Colors.black87,width: 1),
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
          child: Column (
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("$name" ,style: TextStyle(
                  color: TextColor,
                  fontSize: 25.0
              ),),
              Text("\$$salary",style: TextStyle(
                  color: TextColor,
                  fontSize: 20.0
              ),),
            ],
          ) ,
        ),
      );

  }
}
