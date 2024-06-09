import 'package:flutter/material.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({super.key});

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("images/back.jpg"),
        fit: BoxFit.cover,
        opacity: 100,
      )),
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
        body: Container(
          padding: EdgeInsets.all(2),
          child: Column(children: [
            Text(
              'Welcome to our Humidity Check and Water Level Checking app!\n\n'
              'At Iot Appp, we are dedicated to providing you with an easy-to-use solution for monitoring humidity levels and water levels in your surroundings. \n\n'
              'Our app utilizes cutting-edge technology to give you real-time updates on the humidity levels of your environment, allowing you to stay informed and take necessary actions to maintain optimal conditions. \n\n'
              'Thank you for choosing [Iot App] for all your humidity and water level monitoring needs. Stay tuned for updates and new features as we continue to improve and enhance your experience.',
              style: TextStyle(
                  fontSize: 19.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 100),
            Text(
              '@Maduzan',
              style: TextStyle(
                  fontSize: 19.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold),
            ),
          ]),
        ),
      ),
    );
  }
}
