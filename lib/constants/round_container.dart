import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundContainer extends StatelessWidget {
  final String heading;
  final String assetImageUrl;
  final String body;
  const RoundContainer({super.key, required this.assetImageUrl, required this.body, required this.heading});

  @override
  Widget build(BuildContext context) {
    var screenSizeWidth = MediaQuery.of(context).size.width;
    var screeSizeHeight = MediaQuery.of(context).size.height;
    return  Container(
        margin: EdgeInsets.all(screenSizeWidth/150),
        width: screenSizeWidth/5,
        height: screenSizeWidth/5,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(200),
          border: Border.all(width: 1,color: Colors.red),
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
            SizedBox(height: screenSizeWidth/80,),
            Text(heading,style:
            TextStyle( fontSize: screenSizeWidth/100,fontWeight:   FontWeight.bold),),
            Image.asset("$assetImageUrl",height: screenSizeWidth/8,width: screenSizeWidth/8,),
            SizedBox(height: 0,),
            Text(body,style:
            TextStyle(color:  Colors.white, fontSize: screenSizeWidth/120),),
          ],
        )
    );
  }
}
