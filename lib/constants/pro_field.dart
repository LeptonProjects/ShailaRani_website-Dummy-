import 'package:flutter/material.dart';

class ProField extends StatelessWidget {
  late String hint;
  ProField({super.key, required this.hint });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      Column(children: [
        Container(
          // height: 500,
          // width: 500,
          // color: Colors.blueAccent,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50,right: 50, top: 50),
                child:TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: hint,
                  ),
                ),
              ),

            ],
          ),




        ),
      ],

      )),
    );
  }
}