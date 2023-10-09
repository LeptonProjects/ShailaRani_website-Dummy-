

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_page/constants/pro_field.dart';
import 'package:home_page/constants/round_container.dart';
import 'package:home_page/constants/square_container.dart';



class HomePage extends StatelessWidget {
   const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    var screenSizeWidth = MediaQuery.of(context).size.width;
    Row rowOne() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RoundContainer(assetImageUrl: "assets/images/admin.png", body: "Admin can manage and monitor\n"
              " the whohle classes acrtivities\n"
              "from the dashboard", heading: "Admin Login"),
          RoundContainer(assetImageUrl: "assets/images/parent.png", body: "Parents are uoadeted with\n"
              " attandance and class activites\n"
              "in daily basis", heading: "Parent Login"),
          RoundContainer(assetImageUrl: "assets/images/teacher.png", body: "Provided login for all the\n"
              " teachers in the school\n"
              "for better academics", heading: "Class Teacher Login")
        ],
      );
    }
    
    Row rowTwo() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RoundContainer(assetImageUrl: "assets/images/student.png", body: "Stents will updated with \n"
              "all the daily actvities in\n"
              "class and school", heading: "Student Login"),
          RoundContainer(assetImageUrl: "assets/images/classteacher.png", body: "Class teacher can control and \n"
              "monitor all the activities in a class ", heading: "Class teacher Login")
        ],
      );
    }
    Row rowThree() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SquareContainer(squareContainerHeading: "Attendance Management", squareContainerbody:
          "Attendance management ensures systematic and digital process of tracking \n"
              "and managing the attendance of students, teachers, and staff within the school.\n"
              " This feature streamlines the traditionally manual task of recording attendance \n"
              "and offers several benefits, including accuracy, efficiency, and real-time data accessibility.\n"

              "The core function of attendance management is to record the presence or absence of individuals,\n"
              " typically students and staff, during scheduled classes, events, or working hours. \n"
              "Students' absence will be notified on parents and guardians' mobile through push notifications.\n", imageUrl: '',

              ),
          SquareContainer(squareContainerHeading: "Attendance Management", squareContainerbody: "hgfxhgcjmcjcj\n"
              "gnfxhmgcjmcmjgcv\n"
              "gfdhgchjgcjmghcjm\n"
              "jgdjcfjhvcjvjh", imageUrl: '',),
          SquareContainer(squareContainerHeading: "Attendance Management", squareContainerbody: "hgfxhgcjmcjcj\n"
              "gnfxhmgcjmcmjgcv\n"
              "gfdhgchjgcjmghcjm\n"
              "jgdjcfjhvcjvjh", imageUrl: '',),
          SquareContainer(squareContainerHeading: "Attendance Management", squareContainerbody: "hgfxhgcjmcjcj\n"
              "gnfxhmgcjmcmjgcv\n"
              "gfdhgchjgcjmghcjm\n"
              "jgdjcfjhvcjvjh", imageUrl: '',),
          SquareContainer(squareContainerHeading: "Attendance Management", squareContainerbody: "hgfxhgcjmcjcj\n"
              "gnfxhmgcjmcmjgcv\n"
              "gfdhgchjgcjmghcjm\n"
              "jgdjcfjhvcjvjh", imageUrl: '',)
        ],
      );
    }

    Row rowFour() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SquareContainer(squareContainerHeading: "Attendance Management", squareContainerbody: "hgfxhgcjmcjcj\n"
              "gnfxhmgcjmcmjgcv\n"
              "gfdhgchjgcjmghcjm\n"
              "jgdjcfjhvcjvjh", imageUrl: '',),
          SquareContainer(squareContainerHeading: "Attendance Management", squareContainerbody: "hgfxhgcjmcjcj\n"
              "gnfxhmgcjmcmjgcv\n"
              "gfdhgchjgcjmghcjm\n"
              "jgdjcfjhvcjvjh", imageUrl: '',),
          SquareContainer(squareContainerHeading: "Attendance Management", squareContainerbody: "hgfxhgcjmcjcj\n"
              "gnfxhmgcjmcmjgcv\n"
              "gfdhgchjgcjmghcjm\n"
              "jgdjcfjhvcjvjh", imageUrl: '',),
          SquareContainer(squareContainerHeading: "Attendance Management", squareContainerbody: "hgfxhgcjmcjcj\n"
              "gnfxhmgcjmcmjgcv\n"
              "gfdhgchjgcjmghcjm\n"
              "jgdjcfjhvcjvjh", imageUrl: '',),
          SquareContainer(squareContainerHeading: "Attendance Management", squareContainerbody: "hgfxhgcjmcjcj\n"
              "gnfxhmgcjmcmjgcv\n"
              "gfdhgchjgcjmghcjm\n"
              "jgdjcfjhvcjvjh", imageUrl: '',)
        ],
      );
    }

    Row rowFive() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SquareContainer(squareContainerHeading: "Attendance Management", squareContainerbody: "hgfxhgcjmcjcj\n"
              "gnfxhmgcjmcmjgcv\n"
              "gfdhgchjgcjmghcjm\n"
              "jgdjcfjhvcjvjh", imageUrl: '',),
          SquareContainer(squareContainerHeading: "Attendance Management", squareContainerbody: "hgfxhgcjmcjcj\n"
              "gnfxhmgcjmcmjgcv\n"
              "gfdhgchjgcjmghcjm\n"
              "jgdjcfjhvcjvjh", imageUrl: '',),
          SquareContainer(squareContainerHeading: "Attendance Management", squareContainerbody: "hgfxhgcjmcjcj\n"
              "gnfxhmgcjmcmjgcv\n"
              "gfdhgchjgcjmghcjm\n"
              "jgdjcfjhvcjvjh", imageUrl: '',),
          SquareContainer(squareContainerHeading: "Attendance Management", squareContainerbody: "hgfxhgcjmcjcj\n"
              "gnfxhmgcjmcmjgcv\n"
              "gfdhgchjgcjmghcjm\n"
              "jgdjcfjhvcjvjh", imageUrl: '',),
          SquareContainer(squareContainerHeading: "Attendance Management", squareContainerbody: "hgfxhgcjmcjcj\n"
              "gnfxhmgcjmcmjgcv\n"
              "gfdhgchjgcjmghcjm\n"
              "jgdjcfjhvcjvjh", imageUrl: '',)
        ],
      );
    }

    Row rowSix() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SquareContainer(squareContainerHeading: "Attendance Management", squareContainerbody: "hgfxhgcjmcjcj\n"
              "gnfxhmgcjmcmjgcv\n"
              "gfdhgchjgcjmghcjm\n"
              "jgdjcfjhvcjvjh", imageUrl: '',),
          SquareContainer(squareContainerHeading: "Attendance Management", squareContainerbody: "hgfxhgcjmcjcj\n"
              "gnfxhmgcjmcmjgcv\n"
              "gfdhgchjgcjmghcjm\n"
              "jgdjcfjhvcjvjh", imageUrl: '',),
          SquareContainer(squareContainerHeading: "Attendance Management", squareContainerbody: "hgfxhgcjmcjcj\n"
              "gnfxhmgcjmcmjgcv\n"
              "gfdhgchjgcjmghcjm\n"
              "jgdjcfjhvcjvjh", imageUrl: '',),
          SquareContainer(squareContainerHeading: "Attendance Management", squareContainerbody: "hgfxhgcjmcjcj\n"
              "gnfxhmgcjmcmjgcv\n"
              "gfdhgchjgcjmghcjm\n"
              "jgdjcfjhvcjvjh", imageUrl: '',),
          SquareContainer(squareContainerHeading: "Attendance Management", squareContainerbody: "hgfxhgcjmcjcj\n"
              "gnfxhmgcjmcmjgcv\n"
              "gfdhgchjgcjmghcjm\n"
              "jgdjcfjhvcjvjh", imageUrl: '',)
        ],
      );
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(child:
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text("User Categories",style: TextStyle(
                color: Colors.black,fontSize: screenSizeWidth/60,
                fontWeight: FontWeight.bold
              ),),
            )),
            rowOne(),
            SizedBox(height: 30,),
            rowTwo(),
            SizedBox(height: 30,),
            Center(child:
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text("Features",style: TextStyle(
                  color: Colors.black,fontSize: screenSizeWidth/60,
                  fontWeight: FontWeight.bold
              ),),
            )),
            rowThree(),
            SizedBox(height: screenSizeWidth/20,),
            rowFour(),
            SizedBox(height: screenSizeWidth/20,),
            rowFive(),
            SizedBox(height: screenSizeWidth/20,),
            rowSix(),
          ],
        )
      ),
    );
  }
}


