import 'package:flutter/material.dart';
import 'package:finall_project/page1.dart';
import 'package:finall_project/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:finall_project/forgotpass.dart';


class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  String email="";
  String password="";
  void loginHandler() async{
    setState(() {
      email=emailController.text;
      password=passwordController.text;
    });
    try{
      final loginUser=await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      if(loginUser.user!=null){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>begin()));
      }
    }
    catch(e){
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
                'Log In',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 80),
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
                width: 200,
                child: ElevatedButton(
                  onPressed: loginHandler,
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {

                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => forgotpass())
                  );

                },
                child: Text('Forgot Password?',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? "),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    child: Text(
                      'Sign Up',
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
