import 'package:flutter/material.dart';
import 'package:prefdemo/services/pref_service.dart';
import 'package:prefdemo/sign_up.dart';

class LogIn extends StatefulWidget {
  static const String id = "log_in";
  const LogIn({Key key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Container(
        margin: EdgeInsets.only(top: 30, left: 10, right: 10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 30, top: 10),
                    child: IconButton(
                        icon: Icon(Icons.arrow_back_rounded, size: 35,),
                      onPressed: (){
                        Prefs.loadUser().then((user) => {
                          print(user.email),
                        });
                          Navigator.pushReplacementNamed(context, SignUp.id);
                      },

                    )
                ),
              ],
            ),
            SizedBox(height: 20,),
            Text("Let's Get Started!", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text("Create an account to Tode to get all features", style: TextStyle(color: Colors.grey),),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 30, top: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey.shade100,
              ),
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
              height: 60,
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Name",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  icon: Icon(Icons.person_outline, color: Colors.grey.shade400,),
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
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
              height: 60,
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  icon: Icon(Icons.email_outlined,color: Colors.grey.shade400,),
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
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
              height: 60,
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Phone",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  icon: Icon(Icons.phone_iphone,color: Colors.grey.shade400,),
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
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
              height: 60,
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  icon: Icon(Icons.lock_open_rounded,color: Colors.grey.shade400,),
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
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
              height: 60,
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  icon: Icon(Icons.lock_open_rounded,color: Colors.grey.shade400,),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 30),
              height: 55,
              width: 210,
              decoration: BoxDecoration(
                color: Colors.blue.shade800,
                borderRadius: BorderRadius.circular(30),
              ),
              child: FlatButton(
                child: Text("CREATE", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),),
                onPressed: (){
                  Navigator.pushReplacementNamed(context, LogIn.id);
                },
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?", style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                  SizedBox(width: 5,),
                  Text("Login here", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
