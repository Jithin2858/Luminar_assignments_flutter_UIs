import 'package:flutter/material.dart';
import 'package:splashscreen/screens/register_page.dart';

import 'home_page.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: const Text("Login Page"))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Center(
              child: Text("Login Page",
                  style: TextStyle(fontSize: 30, color: Colors.black))),
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
                obscuringCharacter: "*",
                obscureText: true,
                decoration: InputDecoration(
                    label: Text('Password'),
                    hintText: "Enter Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))))),
          ),
          SizedBox(
            height: 30,
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder:
                    (context) => HomePage()));
              },
              //color: Colors.orange,
              child: const Text("LOGIN"),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 295.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder:
                            (context) => Register()));
                  },
                  child: const Text("Not a User?Register here!!!")))
        ],
      ),
    );
  }
}
