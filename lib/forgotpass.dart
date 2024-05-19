import 'package:flutter/material.dart';
import 'package:finall_project/login.dart';
import 'package:firebase_auth/firebase_auth.dart';

class forgotpass extends StatefulWidget {
  const forgotpass({super.key});

  @override
  State<forgotpass> createState() => _forgotpassState();
}

class _forgotpassState extends State<forgotpass> {
  final emailController=TextEditingController();
  final auth=FirebaseAuth.instance;
  String email="";
  void ResetPass() async{
    auth.sendPasswordResetEmail(email: emailController.text.toString()).then((value){
      print("recovery mail sent");
    }).onError((error, stackTrace){
      print("error sending mail");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDE638A),
      appBar: AppBar(
        backgroundColor: Color(0xFFDE638A),
        title: Container(
          margin: EdgeInsets.only(top: 13.0),
          child: Row(
            children: [
              Image.asset(
                'icon.png',
                height: 50,
                width: 50,
              ),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 300,
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.email),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            width: 100,
            child: ElevatedButton(onPressed: ResetPass,
              child: Text( 'Forgot',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
            ),
          )
        ],
      ),
    );
  }
}
