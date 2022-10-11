import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("My Home Page"),
      ),
      body: ListView(
        children: const [
          ListTile(leading: Icon(Icons.search),
            title: Text("Search"),
            trailing: Icon(Icons.arrow_circle_right_outlined),),
          ListTile(leading: Icon(Icons.search),
            title: Text("Search"),
            trailing: Icon(Icons.arrow_circle_right_outlined),),
        ],
      ),
    );
  }
}
