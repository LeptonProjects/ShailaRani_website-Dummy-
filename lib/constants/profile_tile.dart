import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  final String imageUrlProfile;
  final String staffName;
  final String designation;
  final String qualification;
  const ProfileTile({super.key,
    required this.imageUrlProfile,
    required this.staffName,
    required this.designation,
  required this.qualification});

  @override
  Widget build(BuildContext context) {
    var screenSizeWidth = MediaQuery.of(context).size.width;
    var screeSizeHeight = MediaQuery.of(context).size.height;
    return  Padding(
      padding: const EdgeInsets.only(top: 10,bottom: 20),
      child: Container(
        width: screenSizeWidth/8,
        height: screenSizeWidth/8,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
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
        child:
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFCE8F2E),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
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
                    width: double.infinity,
                    //color: const Color(0xFFCE8F2E),
                    height: screenSizeWidth/15,
                      child:Image.asset(imageUrlProfile,height: 100,width: 100,),),

                  Container(
                    color: Colors.white,
                    child: Column(
                children: [
                    Center(child: Text(staffName,style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: screenSizeWidth/110
                    ),),),SizedBox(height: 0,),
                    Text(designation,style:
                    TextStyle( fontSize: screenSizeWidth/140,),),
                    Text(qualification,style:
                    TextStyle( fontSize: screenSizeWidth/140,),),  ],
              ),
                  ),
                ],
              ),
      ),
    );
  }
}
