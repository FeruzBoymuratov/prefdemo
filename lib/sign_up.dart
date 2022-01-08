import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prefdemo/log_in.dart';
import 'package:prefdemo/services/pref_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'model/user_model.dart';
import 'dart:convert';

class SignUp extends StatefulWidget {
  static const String id = "sign_up";
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  User? get user => null;

  void _doLogin(){
    String email = emailController.toString().trim();
    String password = passwordController.toString().trim();
    User user = User.from(email: email, password: password);
    Prefs.storeUser(user);
    Prefs.loadUser().then((user) => {
      print(user!.email),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/img.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              child: Text("Welcome back!", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),),
            ),
            Container(
              child: Text("Log in to your existant account of Tode", style: TextStyle(color: Colors.grey),),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 30, top: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey.shade100,
              ),
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              height: 60,
              width: double.infinity,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                  icon: Icon(Icons.person_outline),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, top: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey.shade100,
              ),
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              height: 60,
              width: double.infinity,
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Password",
                  icon: Icon(Icons.lock_open_rounded),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forgot Password?", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey.shade700),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue.shade800,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                    color: Colors.blueAccent,
                    spreadRadius: -5,
                    blurRadius: 50,
                    offset: Offset(0,20),
                  ),]
                ),
                child: FlatButton(
                  child: Text("LOG IN", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),),
                  onPressed: (){
                    _doLogin;
                    // Navigator.pushNamed(context, LogIn.id);
                  },
                ),
            ),
            SizedBox(height: 30,),
            Center(
              child: Text("Or connect using", style: TextStyle(color: Colors.grey.shade500),),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 45),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade900,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 18,),
                            Icon(Icons.facebook, color: Colors.white, size: 25,),
                            SizedBox(width: 5,),
                            Text("Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),)
                          ],
                        ),
                  )),
                  SizedBox(width: 15,),
                  Expanded(
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.yellow.shade700,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 20,),
                            Icon(Icons.g_mobiledata_sharp, color: Colors.white, size: 35,),
                            SizedBox(width: 5,),
                            Text("Google", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),)
                          ],
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?", style: TextStyle(color: Colors.black,),),
                  SizedBox(width: 5,),
                  Text("Sign Up", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
