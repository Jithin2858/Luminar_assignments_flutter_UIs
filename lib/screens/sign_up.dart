import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/screens/login_form.dart';

import 'home_page.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Scaffold(
          body: ListView(
            //mainAxisAlignment: MainAxisAlignment.start,
            children:  [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.08,
              ),
              const Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.01,
              ),
              Center(child: Text("Create an account,it's free",)),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                    decoration: InputDecoration(
                        label: Text('Username'),
                        hintText: "Enter User Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30))))),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                    decoration: InputDecoration(
                        label: Text('Email'),
                        hintText: "Enter your email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30))))),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                    decoration: InputDecoration(
                        label: Text('Password'),
                        hintText: "Enter your password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30))))),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                    decoration: InputDecoration(
                        label: Text('Confirm Password'),
                        hintText: "Enter your password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30))))),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50,right: 50),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height*0.09,
                  //width:0,
                  width: MediaQuery.of(context).size.width*0.7,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder:
                              (context) => HomePage()));
                    },
                    //color: Colors.orange,
                    child: const Text("Sign Up"),
                    style:ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )
                    )
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context) => LoginScreen()));
                      },
                      child: const Text("Already have an account?Login")))
            ],
          ),
        ),
      ),
    );
  }
}
