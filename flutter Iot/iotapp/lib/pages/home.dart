import 'package:flutter/material.dart';
import 'package:iotapp/pages/second.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/back.jpg'),
          fit: BoxFit.cover,
          opacity: 130,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('Iot App'),
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
          ),
          body: Column(
            children: [
              SizedBox(height: 50),
              Text("Reoort",
                  style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 24, 24, 24),
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/second');
                    },
                    child: Text(' Show Report', style: TextStyle(fontSize: 20)),
                  ),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Text("Show Details",
                  style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 24, 24, 24),
                      fontWeight: FontWeight.bold)),
              Expanded(
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/On");
                    },
                    child: Text('Watering', style: TextStyle(fontSize: 20)),
                  ),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Text("About_us",
                  style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 24, 24, 24),
                      fontWeight: FontWeight.bold)),
              Expanded(
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/About');
                    },
                    child: Text('Click', style: TextStyle(fontSize: 20)),
                  ),
                ),
              ),
              SizedBox(height: 50),
            ],
          )),
    );
  }
}
