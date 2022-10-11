import 'package:flutter/material.dart';

import 'home_page.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Login'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Center(
              child: Text('Register Form',style: TextStyle(fontSize: 30,color: Colors.black))),
            const Padding(
                padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  label: Text('Username'),
                    prefixIcon: Padding(
                      padding: EdgeInsetsDirectional.only(start: 12.0),
                      child:  Icon(Icons.verified_user), // myIcon is a 48px-wide widget.
                    ),
                  hintText: "Enter your name here",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  )
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    label: Text('Email'),
                    prefixIcon: Padding(
                      padding: EdgeInsetsDirectional.only(start: 12.0),
                      child:  Icon(Icons.email), // myIcon is a 48px-wide widget.
                    ),
                    hintText: "Enter your email here",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    )
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    label: Text('Password'),
                    prefixIcon: Padding(
                      padding: EdgeInsetsDirectional.only(start: 12.0),
                      child:  Icon(Icons.shield), // myIcon is a 48px-wide widget.
                    ),
                    hintText: "Enter your password here",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20,left: 20),
              child: SizedBox(
                height: 30,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder:
                            (context) => const HomePage()));
                  },
                  //color: Colors.orange,
                  child: const Text("Register"),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
