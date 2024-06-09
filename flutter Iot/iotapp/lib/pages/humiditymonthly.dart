import 'package:flutter/material.dart';

class Humidity extends StatefulWidget {
  const Humidity({super.key});

  @override
  State<Humidity> createState() => _HumidityState();
}

class _HumidityState extends State<Humidity> {
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
          )),
    );
  }
}
