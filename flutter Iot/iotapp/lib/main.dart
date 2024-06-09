import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iotapp/bloc/humidity_bloc.dart';
import 'package:iotapp/blocs/bloc/passdata_bloc.dart';
import 'package:iotapp/pages/Aboutus.dart';
import 'package:iotapp/pages/home.dart';
import 'package:iotapp/pages/humiditymonthly.dart';
import 'package:iotapp/pages/on.dart';
import 'package:iotapp/pages/second.dart';
import 'package:iotapp/pages/watermonthly.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PassdataBloc(),
        ),
        BlocProvider(
          create: (context) => HumidityBloc(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: {
          '/second': (context) => Second(),
          '/Woter': (context) => Woter(),
          '/Home': (context) => HomePage(),
          '/Humidity': (context) => Humidity(),
          '/About': (context) => Aboutus(),
          '/On': (context) => On()
        },
      ),
    );
  }
}
