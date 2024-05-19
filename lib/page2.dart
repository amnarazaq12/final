import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:finall_project/result.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {

double _heightValue = 0.0;
double _weightValue = 50.0;
int _ageValue = 40;
double result=0.0;
String res=" ";
String _genderValue = "Male";
@override
Widget build(BuildContext context) {
  return Scaffold(
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
    body: Container(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.pink,
                    height: 150,
                    width: 150,
                    child: Card(
                      color: Colors.pink,
                      elevation: 10,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _genderValue = 'Male';
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 100,
                              color: Colors.white,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Male',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  Container(
                    color: Colors.pink,
                    height: 150,
                    width: 150,
                    child: Card(
                      color: Colors.pink,
                      elevation: 10,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _genderValue = 'Female';
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 100,
                            color: Colors.white,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Female',
                              style: TextStyle(
                              color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.pink,
                height: 140,
                width: 320,
                child: Card(
                  color: Colors.pink,
                  elevation: 10,
                  child: Column(
                    children: [
                      Text(
                        'HEIGHT (cm)',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '$_heightValue',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                      Slider(
                        value: _heightValue,
                        min: 0,
                        max: 280,
                        activeColor: Colors.white,
                        onChanged: (value) {
                          setState(() {
                            _heightValue = double.parse(value.toStringAsFixed(
                                2)); // Update the variable value
                          });
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.pink,
                height: 150,
                width: 150,
                child: Card(
                  color: Colors.pink,
                  elevation: 10,
                  child: Column(
                    children: [
                      Text(
                        'WEIGHT(KG)',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '$_weightValue',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove,
                            color: Colors.white,),
                            onPressed: () {
                              setState(() {
                                if (_weightValue > 0) _weightValue--;
                              });
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.add,
                            color: Colors.white,),
                            onPressed: () {
                              setState(() {
                                _weightValue = _weightValue + 0.5;
                                _weightValue = double.parse(
                                    _weightValue.toStringAsFixed(2));
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Container(
                color: Colors.pink,
                height: 150,
                width: 150,
                child: Card(
                  color: Colors.pink,
                  elevation: 10,
                  child: Column(
                    children: [
                      Text(
                        'AGE',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        color: Colors.white
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '$_ageValue',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove,
                            color: Colors.white,),
                            onPressed: () {
                              setState(() {
                                if (_ageValue > 0) _ageValue--;
                              });
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.add,
                            color: Colors.white,),
                            onPressed: () {
                              setState(() {
                                _ageValue++;
                              });
                            },
                          ),
                        ],
                      ),

                    ],
                  ),
                ),

              ),

            ],
          ),
          SizedBox(height: 20,),
          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.pink,
                  height: 40,
                  width: 150,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Optional: rounded corners
                        ),
                      ),
                      onPressed: (){
                    result=_weightValue/((_heightValue/100)*(_heightValue/100));
                    result=double.parse(result.toStringAsFixed(2));

                  setState(() {
                    res= '$result';
                  });
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => ResultPage(resultMessage: res),));
                  }, child: Text('Calculate',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  ))
              ),
            ],
          )
        ],
      ),
    ),

  );
}
}

