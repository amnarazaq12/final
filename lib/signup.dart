
import 'package:flutter/material.dart';
import 'login.dart';
import 'package:finall_project/page1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  final TextEditingController ConfirmPassController=TextEditingController();
  void signupHandler() async{
    String email=emailController.text;
    String password=passwordController.text;
    String confirmpassword=ConfirmPassController.text;

    if(password!=confirmpassword){
      Text('Passwords don\'t match');

      return;
    }
    try{
      final newUser=await FirebaseAuth.instance.createUserWithEmailAndPassword(email:email,password:password);
      if(newUser.user!=null)
      {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>begin()));

      }
    }
    catch (e) {
      print("Enter valid email or password: $e");
    }
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height:80),
              SizedBox(
                width: 300, // Set the desired width here
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
              SizedBox(height: 20),
              SizedBox(
                width: 300, // Set the desired width here
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.lock),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 300, // Set the desired width here
                child: TextField(
                  controller: ConfirmPassController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.lock),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
               onPressed: signupHandler,//function call
                child: Text('Sign Up'),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? "),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}