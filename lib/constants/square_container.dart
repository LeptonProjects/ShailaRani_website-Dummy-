import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SquareContainer extends StatelessWidget {
  final String imageUrl;
  final String squareContainerHeading;
  final String squareContainerbody;
  const SquareContainer({super.key,
  required this.imageUrl,
    required this.squareContainerHeading,
    required this.squareContainerbody});

  @override
  Widget build(BuildContext context) {
    var screenSizeWidth = MediaQuery.of(context).size.width;
    var screeSizeHeight = MediaQuery.of(context).size.height;
    return  Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Container(
          width: screenSizeWidth/7,
          height: screenSizeWidth/5,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(0),
            border: Border.all(width: 1,color: Colors.transparent),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                offset: const Offset(
                  10.0,
                  2.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ), //BoxShadow
              BoxShadow(
                color: Colors.black38,
                offset: const Offset(5.0, 5.0),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ), //BoxShadow
            ],

          ),
          child: Column(
            children: [
              Image.asset("$imageUrl"),
              Center(child: Text("$squareContainerHeading",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: screenSizeWidth/110
              ),)),
              SizedBox(height: 0,),
              Text("$squareContainerbody",style:
              TextStyle( fontSize: screenSizeWidth/140,),),
            ],
          )
      ),
    );
  }
}
