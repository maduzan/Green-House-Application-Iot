import 'package:flutter/material.dart';

class On extends StatelessWidget {
  const On({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/back.jpg'),
              fit: BoxFit.cover,
              opacity: 130)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Iot App'),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/Home');
              },
              icon: Icon(Icons.home)),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 240),
              ElevatedButton(onPressed: () {}, child: Text('On The Mortor')),
              SizedBox(height: 50),
              ElevatedButton(onPressed: () {}, child: Text('Off The Mortor'))
            ],
          ),
        ),
      ),
    );
  }
}
