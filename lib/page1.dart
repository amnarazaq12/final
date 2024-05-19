import 'package:finall_project/page2.dart';
import 'package:flutter/material.dart';
import 'package:finall_project/dietplan.dart';
import 'package:finall_project/main.dart';

class begin extends StatefulWidget {
  const begin({super.key});

  @override
  State<begin> createState() => _beginState();
}

class _beginState extends State<begin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFDE638A),
        appBar: AppBar(
          backgroundColor: Color(0xFFDE638A),
          title: Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Image.asset(
              'icon.png', // Ensure the path is correct
              height: 70,
              width: 70,
            ),
          ),
        ),
        body: Center(
          child: Column(
     //       mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height:70),
              Text(
                'Let\'s begin the journey',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            //  SizedBox(height: 10),
        //      Container(
          //      margin: EdgeInsets.only(left: 40.0),
            //    width: 450,
              //  child: Text(
                //  ' Calculate your BMI to proceed further',
              //    style: TextStyle(
                //    fontSize: 20,
                  //),
                //),
              //),
              SizedBox(height: 40),


          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              minimumSize: Size(300, 60),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => page2()),
              );
            },
            child: Text(
              'Calculate BMI',
              style: TextStyle(
                color: Colors.white, // Text color
                fontSize: 20,
              ),
            ),
          ),

              SizedBox(height: 10,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(300, 60),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DietPlan()),
                  );
                },
                child: Text(
                  'Get Diet Plan',
                  style: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                  minimumSize: Size(130, 50), // Set the size of the button
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Back',
                  style: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}