import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_page/caro_slider.dart';
import 'package:home_page/constants/pro_field.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.white60,
        title: Row(children: [
          Icon(Icons.email, size: 15, color: Colors.black,),
          Text("info@shailaraniassociates.com",
            style: TextStyle(fontSize: 13, color: Colors.black),),
        ],),
      ),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text("C",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                        )),
                    background: Container(
                      color: Colors.blueGrey,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 60),
                            child: Image.asset(
                              "assets/images/shaila.png",
                              height: 150, width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    )),
                bottom:
                PreferredSize(
                  preferredSize: const Size.fromHeight(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black12
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text("S H A I L A R A N I", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),),
                              Text("A S S O C I A T E S", style: TextStyle(
                                color: Colors.white, fontSize: 15,
                              ),),
                              SizedBox(height: 5,),
                              Text("Lawyers, Mediators & Family Counsellors",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),)
                            ],
                          ),
                          //Expanded(child: Container()),
                          Container(
                            width: 500,
                            child: TabBar(
                              labelColor: Colors.black,
                              unselectedLabelColor: Colors.grey,
                              tabs: [
                                GestureDetector(
                                  onTap: (){

                                  },
                                  child: Container(
                                    child:
                                    new Tab(
                                        text: "Tab 1"),),
                                ),
                                GestureDetector(
                                  onTap: (){

                                  },
                                  child: Container(
                                    child:
                                    new Tab(
                                        text: "Tab 1"),),
                                ),
                                GestureDetector(
                                  onTap: (){

                                  },
                                  child: Container(
                                    child:
                                    new Tab(
                                        text: "Tab 1"),),
                                ),
                                GestureDetector(
                                  onTap: (){

                                  },
                                  child: Container(
                                    child:
                                    new Tab(
                                        text: "Tab 1"),),
                                ),
                                GestureDetector(
                                  onTap: (){

                                  },
                                  child: Container(
                                    child:
                                    new Tab(
                                        text: "Tab 1"),),
                                ),


                              ],
                            ),
                          ),
                          Container(
                            child: Text("Fix Appointment"),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),

            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(width: double.infinity,
                    height: double.infinity,
                    child: CaroSlider())
              ],
            ),
          )
        ),
      ),
    );
  }
}
