import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iotapp/bloc/humidity_bloc.dart';
import 'package:iotapp/blocs/bloc/passdata_bloc.dart';

class Second extends StatelessWidget {
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
              SizedBox(
                height: 40,
              ),
              BlocBuilder<PassdataBloc, PassdataState>(
                builder: (context, state) {
                  if (state is PassdataInitial) {
                    return Text(
                      'Press the button to fetch data',
                      style: TextStyle(fontSize: 20),
                    );
                  } else if (state is DataLoadedState) {
                    return Text(
                      'Water Level: ${state.data}',
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
                    );
                  } else if (state is ErrorState) {
                    return Text(
                      'Error: ${state.error}',
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Dispatch the event to fetch data
                  context
                      .read<PassdataBloc>()
                      .add(Getfirebasedata('WaterLevel'));
                },
                child: Text('Fetch Data'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Dispatch the event to fetch data
                  Navigator.of(context).pushNamed('/Woter');
                },
                child: Text('Monthly Report'),
              ),
              SizedBox(
                height: 150,
              ),
              BlocBuilder<HumidityBloc, HumidityState>(
                builder: (context, state) {
                  if (state is HumidityInitial) {
                    return Text(
                      'Press the button to fetch data',
                      style: TextStyle(fontSize: 20),
                    );
                  } else if (state is LoardHumidity) {
                    return Text(
                      'Temperature: ${state.humidity}',
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
                    );
                  } else if (state is ErrorHandleState) {
                    return Text(
                      'Error: ${state.err}',
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
              ElevatedButton(
                onPressed: () {
                  // Dispatch the event to fetch data
                  context.read<HumidityBloc>().add(GetfirebaseHumidity('Temp'));
                },
                child: Text('Fetch Data'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Dispatch the event to fetch data
                  Navigator.of(context).pushNamed('/Humidity');
                },
                child: Text('Monthly Report'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
