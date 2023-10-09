import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:home_page/constants/profile_tile.dart';
import 'package:home_page/constants/square_container.dart';

class ShilaRani extends StatefulWidget {
  const ShilaRani({super.key});

  @override
  State<ShilaRani> createState() => _ShilaRaniState();
}

class _ShilaRaniState extends State<ShilaRani> {

  late String imageUrlProfileDisplay = "assets/images/childcustody.png";
  late String staffNameDisplay = "";
  late String designationDisplay = "";
  late String qualificationDisplay = "";

  List<String> countries = [
    "Brazil",
    "Nepal",
    "India",
    "China",
    "USA",
    "Canada"
  ];

  List<String> caption = [
    "We empower those who are going through difficult circumstances by educating them on their basic rights as granted by the constitution of India and the law.\n"
        " We intend to empower them with necessary legal awareness and knowledge to overcome the situation with confidence and courage.\n"

        "With a special emphasis on divorce and family law, we hope to shed light on the legal difficulties involved and provide help during these trying times.",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
  ];

  List<CarouselItem> itemList = [
    CarouselItem(
      //image: ExactAssetImage(
       // "assets/images/lawcarosal.png"
      //),
      image: NetworkImage(""),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.bottomCenter,
          end: FractionalOffset.topCenter,
          colors: [
            Colors.blueAccent.withOpacity(1),
            Colors.black.withOpacity(.3),
          ],
          stops: const [0.0, 1.0],
        ),
      ),
      title:
      "We empower those who are going through difficult circumstances by educating them on their basic rights as granted by the constitution of India and the law.\n"
        " We intend to empower them with necessary legal awareness and knowledge to overcome the situation with confidence and courage.\n"

  "With a special emphasis on divorce and family law, we hope to shed light on the legal difficulties involved and provide help during these trying times.",
      titleTextStyle: const TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
      leftSubtitle: '\$51,046 in prizes',
      rightSubtitle: '4882 participants',
      rightSubtitleTextStyle: const TextStyle(
        fontSize: 12,
        color: Colors.black,
      ),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: ExactAssetImage("assets/images/mediancarosal.png"),
      title: '@coskuncay published flutter_custom_carousel_slider!',
      titleTextStyle: const TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
      leftSubtitle: '11 Feb 2022',
      rightSubtitle: 'v1.0.0',
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const ExactAssetImage("assets/images/lawcarosal.png"),
      title: 'npx coskuncay',
      titleTextStyle: const TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
      leftSubtitle: '27 Mar 2022',
      rightSubtitle: 'v1.1.0',
      onImageTap: (i) {},
    ),
  ];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return  Scaffold(
      body: DefaultTabController(
        initialIndex: 1,
        length: 6,
        child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 250.0,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      //title: Text("",
                          //style: TextStyle(
                            //color: Colors.white,
                           // fontSize: 10.0,
                         // )),
                      background: Container(
                        color: Colors.blueGrey,
                        width: double.infinity,
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 40,left: screenSize.width/10,bottom: 5),
                              child: Column(

                                children: [
                                  Icon(Icons.note,size: 50,color:  Color(
                                      0xFFCE8F2E),),
                                  SizedBox(height: 10,),
                                  Text("Consult Us")
                                ],
                              ),
                            ),
                           // SizedBox(width: screenSize.width/4,),
                            Padding(
                              padding: EdgeInsets.only(left: screenSize.width/3.5,bottom: 40),
                              child: Image.asset(
                                "assets/images/shaila.png",
                                height: 250, width: 250,
                                fit: BoxFit.cover,
                              ),
                            ),
                            //SizedBox(width: screenSize.width/8,),
                            Expanded(child: Container()),
                            Padding(
                              padding: EdgeInsets.only(top: 40,right:screenSize.width/10,bottom: 5),
                              child: Column(

                                children: [
                                  Icon(Icons.home,size: 50,color:
                                  Color(0xFFCE8F2E),),
                                  SizedBox(height: 10,),
                                  Text("Consult Us")
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                  bottom:
                  PreferredSize(
                    preferredSize: const Size.fromHeight(30.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black12
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(screenSize.width/200 ),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(width: screenSize.width/30,),
                            Column(
                              children: [
                                Text("S H A I L A  R A N I", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenSize.width/110,
                                    fontWeight: FontWeight.bold),),
                                Text("A S S O C I A T E S", style: TextStyle(
                                  color: Colors.white, fontSize: screenSize.width/100,
                                ),),
                                SizedBox(height: 5,),
                                Text("Lawyers, Mediators & Family Counsellors",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: screenSize.width/115),)
                              ],
                            ),
                            SizedBox(width: screenSize.width/12,),
                            Container(
                             width:screenSize.width/2.3,
                              child: TabBar(
                                //controller: i,
                                labelColor: Colors.black,
                                labelStyle: TextStyle(fontSize: screenSize.width/150),
                                unselectedLabelColor: Colors.grey,
                                tabs: [
                                  GestureDetector(
                                    onTap: (){

                                    },
                                    child: Container(
                                      child:
                                      new Tab(
                                          text: "HOME"),),
                                  ),
                                  GestureDetector(
                                    onTap: (){

                                    },
                                    child: Container(
                                      child:
                                      new Tab(
                                          text: "ABOUT US",),),
                                  ),
                                  GestureDetector(
                                    onTap: (){

                                    },
                                    child: Container(
                                      child:
                                      new Tab(
                                          text: "EXPRTISE"),),
                                  ),
                                  GestureDetector(
                                    onTap: (){

                                    },
                                    child: Container(
                                      child:
                                      new Tab(
                                          text: "COUNCELLING"),),
                                  ),
                                  GestureDetector(
                                    onTap: (){

                                    },
                                    child: Container(
                                      child:
                                      new Tab(
                                          text: "CAREERS"),),
                                  ),
                                  GestureDetector(
                                    onTap: (){

                                    },
                                    child: Container(
                                      child:
                                      new Tab(
                                          text: "CONTACT US",),),
                                  ),


                                ],
                              ),
                            ),
                           Expanded(child: Container()),
                            Container(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1,color: Colors.yellowAccent)
                                ),
                                padding: EdgeInsets.only(left: screenSize.width/100,top: 5,bottom: 5,right: screenSize.width/100),
                                  child: Text("Fix Appointment",style: TextStyle(color: Colors.white,fontSize: screenSize.width/110),)),

                            ),
                            SizedBox(width: screenSize.width/10,),
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
                Column(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                          autoPlay: true,
                          viewportFraction: 1.0,
                          enlargeCenterPage: false,
                          height: screenSize.height*0.65,
                          autoPlayInterval: Duration(seconds: 5),
                          autoPlayAnimationDuration: Duration(milliseconds: 800)),
                      items: caption.map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 0),
                                decoration: BoxDecoration(
                                  color: const Color(0xff7c94b6),
                                  image: const DecorationImage(
                                    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                 // border: Border.all(
                                   // width: 8,
                                  //),
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('text $i', style: TextStyle(fontSize: 16.0),),
                                    ),
                                  ],
                                )
                            );
                          },
                        );
                      }).toList(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: screenSize.width/4,
                          width: screenSize.width/4,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            //border: Border.all(width: 1,color: Colors.white,)
                          ),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Center(
                                  child: Column(
                                    children: [
                                      Text("Don't Hesitate to Ask ",style: TextStyle(
                                        fontSize: screenSize.width/60
                                      ),),
                                      SizedBox(height: screenSize.width/50,),
                                      Container(
                                        child: Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(width: 1,color: Color(0xFFCE8F2E))
                                            ),
                                            padding: EdgeInsets.only(left: screenSize.width/100,top: 5,bottom: 5,right: screenSize.width/100),
                                            child: Text("Fix Appointment",
                                              style: TextStyle(color: Colors.black,fontSize: screenSize.width/110),)),

                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ),
                      Container(
                      height: screenSize.width/6,
                      alignment: Alignment.center,
                      child: VerticalDivider(
                        color: Color(
                            0xFFCE8F2E),
                        thickness: 1,
                      ),
                    ),
                        Container(
                          height: screenSize.width/4,
                          width: screenSize.width/4,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            //border: Border.all(width: 1,color: Colors.white,)
                          ),
                          child: Center(
                            child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text("Emergency contacts",style: TextStyle(
                                      fontSize: screenSize.width/60
                                  ),),
                                ),
                                SizedBox(height: screenSize.width/200,),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.phone,size: screenSize.width/75,color: Colors.blueGrey,),
                                        Text("+91-123456789"),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                      Icon(Icons.email, size: screenSize.width/75, color: Colors.blueGrey,),
                                      Text("info@shailaraniassociates.com",
                                        style: TextStyle(fontSize: 13, color: Colors.black),),
                                    ],),
                                Column(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset("assets/images/whatsapp.png",height: screenSize.width/15,width: screenSize.width/10,),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ),

                        Container(
                          height: screenSize.width/6,
                          alignment: Alignment.center,
                          child: VerticalDivider(
                            color: Color(
                                0xFFCE8F2E),
                            thickness: 1,
                          ),
                        ),
                        Container(
                          height: screenSize.width/4,
                          width: screenSize.width/4,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            //border: Border.all(width: 1,color: Colors.white,)
                          ),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text("Our Offices",style: TextStyle(
                                      fontSize: screenSize.width/60
                                  ),),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: screenSize.width/20,
                                            width: screenSize.width/20,
                                            child:
                                            Image.asset("assets/images/shaila_office_tvm.jpg",
                                             height: screenSize.width/20,width: screenSize.width/20,
                                              )),
                                        Text("Trivandrum"),
                                      ],
                                    ),
                                    Text("Ernakulam"),
                                    Text("Banglore"),
                                    Text("Chennai"),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Center(
                      child: Container(
                        child: Text(
                          "OUR PRACTICES",style:
                        TextStyle(
                          fontSize: screenSize.width/60,
                            color: Colors.black),
                        ),
                      ),
                    ),),


                    Padding(
                      padding: EdgeInsets.only(top: screenSize.width/25,bottom: screenSize.width/25,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SquareContainer(squareContainerHeading: "Domestic Violence",
                              squareContainerbody: "Domestic violence makes no distinctions. \n"
                                  "It affects people of all sexes, ages, and \nsocioeconomic backgrounds. The home should\n"
                                  " be a place of safety, not dread and violence.\n Don't suffer in silence.", imageUrl: 'assets/images/childcustody.png',),
                          SizedBox(width: screenSize.width/20,),
                          SquareContainer(squareContainerHeading: "Domestic Violence",
                            squareContainerbody: "Domestic violence makes no distinctions. \n"
                                "It affects people of all sexes, ages, and \nsocioeconomic backgrounds. The home should\n"
                                " be a place of safety, not dread and violence.\n Don't suffer in silence.", imageUrl: 'assets/images/childcustody.png',),
                          SizedBox(width: screenSize.width/20,),
                          SquareContainer(squareContainerHeading: "Domestic Violence",
                            squareContainerbody: "Domestic violence makes no distinctions. \n"
                                "It affects people of all sexes, ages, and \nsocioeconomic backgrounds. The home should\n"
                                " be a place of safety, not dread and violence.\n Don't suffer in silence.", imageUrl: 'assets/images/childcustody.png',),
                          SizedBox(width: screenSize.width/20,),
                          SquareContainer(squareContainerHeading: "Domestic Violence",
                            squareContainerbody: "Domestic violence makes no distinctions. \n"
                                "It affects people of all sexes, ages, and \nsocioeconomic backgrounds. The home should\n"
                                " be a place of safety, not dread and violence.\n Don't suffer in silence.", imageUrl: 'assets/images/childcustody.png',)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: screenSize.width/25,bottom: screenSize.width/25,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SquareContainer(squareContainerHeading: "Domestic Violence",
                            squareContainerbody: "Domestic violence makes no distinctions. \n"
                                "It affects people of all sexes, ages, and \nsocioeconomic backgrounds. The home should\n"
                                " be a place of safety, not dread and violence.\n Don't suffer in silence.", imageUrl: 'assets/images/childcustody.png',),
                          SizedBox(width: screenSize.width/20,),
                          SquareContainer(squareContainerHeading: "Domestic Violence",
                            squareContainerbody: "Domestic violence makes no distinctions. \n"
                                "It affects people of all sexes, ages, and \nsocioeconomic backgrounds. The home should\n"
                                " be a place of safety, not dread and violence.\n Don't suffer in silence.", imageUrl: 'assets/images/childcustody.png',),
                          SizedBox(width: screenSize.width/20,),
                          SquareContainer(squareContainerHeading: "Domestic Violence",
                            squareContainerbody: "Domestic violence makes no distinctions. \n"
                                "It affects people of all sexes, ages, and \nsocioeconomic backgrounds. The home should\n"
                                " be a place of safety, not dread and violence.\n Don't suffer in silence.", imageUrl: 'assets/images/childcustody.png',),
                          SizedBox(width: screenSize.width/20,),
                          SquareContainer(squareContainerHeading: "Domestic Violence",
                            squareContainerbody: "Domestic violence makes no distinctions. \n"
                                "It affects people of all sexes, ages, and \nsocioeconomic backgrounds. The home should\n"
                                " be a place of safety, not dread and violence.\n Don't suffer in silence.", imageUrl: 'assets/images/childcustody.png',)
                        ],
                      ),
                    ),

                    Container(
                      width: screenSize.width,
                      child: SizedBox(
                          height: screenSize.width/6,
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  ProfileTile(imageUrlProfile: "kjhbkjb", staffName: "jhgjhgjhg", designation: "hgfjhgjhgvf", qualification: "kjhbkjkjbnk"),
                                  SizedBox(width: screenSize.width/20,),
                                  ProfileTile(imageUrlProfile: "kjhbkjb", staffName: "jhgjhgjhg", designation: "hgfjhgjhgvf", qualification: "kjhbkjkjbnk"),
                                  SizedBox(width: screenSize.width/20,),
                                  ProfileTile(imageUrlProfile: "kjhbkjb", staffName: "jhgjhgjhg", designation: "hgfjhgjhgvf", qualification: "kjhbkjkjbnk"),
                                  SizedBox(width: screenSize.width/20,),
                                  ProfileTile(imageUrlProfile: "kjhbkjb", staffName: "jhgjhgjhg", designation: "hgfjhgjhgvf", qualification: "kjhbkjkjbnk"),
                                  SizedBox(width: screenSize.width/20,),
                                  ProfileTile(imageUrlProfile: "kjhbkjb", staffName: "jhgjhgjhg", designation: "hgfjhgjhgvf", qualification: "kjhbkjkjbnk"),
                                  SizedBox(width: screenSize.width/20,),
                                  ProfileTile(imageUrlProfile: "kjhbkjb", staffName: "jhgjhgjhg", designation: "hgfjhgjhgvf", qualification: "kjhbkjkjbnk"),
                                  SizedBox(width: screenSize.width/20,),
                                  ProfileTile(imageUrlProfile: "kjhbkjb", staffName: "jhgjhgjhg", designation: "hgfjhgjhgvf", qualification: "kjhbkjkjbnk"),
                                  SizedBox(width: screenSize.width/20,),
                                  ProfileTile(imageUrlProfile: "kjhbkjb", staffName: "jhgjhgjhg", designation: "hgfjhgjhgvf", qualification: "kjhbkjkjbnk"),
                                  SizedBox(width: screenSize.width/20,),
                                  ProfileTile(imageUrlProfile: "kjhbkjb", staffName: "jhgjhgjhg", designation: "hgfjhgjhgvf", qualification: "kjhbkjkjbnk"),
                                  SizedBox(width: screenSize.width/20,),
                                  ProfileTile(imageUrlProfile: "kjhbkjb", staffName: "jhgjhgjhg", designation: "hgfjhgjhgvf", qualification: "kjhbkjkjbnk"),
                                  SizedBox(width: screenSize.width/20,),
                                  ProfileTile(imageUrlProfile: "kjhbkjb", staffName: "jhgjhgjhg", designation: "hgfjhgjhgvf", qualification: "kjhbkjkjbnk")
                                ]
                              ))),
                    )

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget box(String title, Color backgroundcolor) {
    return Container(
        margin: const EdgeInsets.all(10),
        width: 400,
        height: 400,
        color: backgroundcolor,
        alignment: Alignment.center,
        child: Text(title,
            style: const TextStyle(color: Colors.white, fontSize: 20)));
  }
}
