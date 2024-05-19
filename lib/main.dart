import 'package:flutter/material.dart';
import 'package:finall_project/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:finall_project/firebase_options.dart';

void main() {

  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const FinalProject());
}

class FinalProject extends StatelessWidget {
  const FinalProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const _StatefulHomePage(), // Define the home screen
    );
  }
}

class _StatefulHomePage extends StatefulWidget {
  const _StatefulHomePage({Key? key}) : super(key: key);

  @override
  State<_StatefulHomePage> createState() => _State();
}

class _State extends State<_StatefulHomePage> {
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
              'icon.png',
              height: 70,
              width: 70,
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [

              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'We care for you',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.only(left: 50.0),
                        width: 450,
                        child: Text(
                          ' "Here is a way for you to unlock a healthier you with our personalized diet plans" ',
                          style: TextStyle(
                            fontSize: 20,
                              color: Colors.white
                           // fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 50.0, 0.0), // Add margin around the container
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Ensure the border is circular
                      border: Border.all(
                        color: Colors.white, // Set the color of the border
                        width: 3.0, // Set the width of the border
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'food2.png', // Ensure the path is correct
                        height: 250,
                        width: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 90),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                  minimumSize: Size(130, 50), // Set the size of the button
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text(
                  'Next',
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