import 'package:flutter/material.dart';
import 'package:sk_onboarding_screen/flutter_onboarding.dart';
import 'package:sk_onboarding_screen/sk_onboarding_screen.dart';
import 'package:task1/Components.dart';

import 'Constants.dart';

class on_boarding extends StatefulWidget {
  const on_boarding({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<on_boarding> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: SKOnboardingScreen(
        bgColor: Colors.white,
        themeColor: colortheme ,
        pages: pages,
        skipClicked: (value) {
          print(value);
          _globalKey.currentState!.showSnackBar(const SnackBar(
            content: Text("Skip clicked"),
          ));
        },
        getStartedClicked: (value) {
          print(value);
          _globalKey.currentState!.showSnackBar(const SnackBar(
            content: Text("Get Started clicked"),
          ));
        },
      ),
    );
  }

  final pages = [
    SkOnboardingModel(
        title: 'Hello to our App',
        description:
            'Easily find your grocery items and you will get delivery in wide range',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'img/1.png'),
    SkOnboardingModel(
        title: 'Pick Up or Delivery',
        description:
            'We make ordering fast, simple and free-no matter if you order online or cash',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'img/2.png'),
    SkOnboardingModel(
        title: 'Stay Tuned',
        description: 'Wait and u will see',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'img/3.png'),
  ];
}

/*import 'package:flutter/material.dart';
import 'package:task1/Components.dart';

class on_boarding extends StatelessWidget {
  const on_boarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:  [
                MY_Button(
                  Fun: (){print("Skip");},
                  height: 40,
                  width: 60,
                  text: "Skip",
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "7",
                  style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                Text(
                  "Karve",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(color: Colors.black),
                ),
              ],
            )


          ],
        ),
      ),
    );
  }
}
*/
