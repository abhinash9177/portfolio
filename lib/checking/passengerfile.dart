import 'package:flutter/material.dart';
import 'package:portfolio/checking/passengerserver.dart';

import 'dart:convert';
import 'dart:async';

import 'package:portfolio/checking/user_model.dart';

class PassengerFile extends StatefulWidget {
  const PassengerFile({Key? key}) : super(key: key);

  @override
  _PassengerFileState createState() => _PassengerFileState();
}

class _PassengerFileState extends State<PassengerFile> {
  late Future<PassengersData?> passenger;
  List<PassengersData> mynewlist = [];

  @override
  void initState() {
    super.initState();

    passenger = PassengerService.getPassenger();
  }

// A function that converts a response body into a List<Photo>.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<PassengersData?>(
            future: passenger,
            builder: (context, snapshot) {
              //print(snapshot.error);
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Text('Loading...');
              } else if (snapshot.hasData) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 50),
                      Expanded(
                        child: ListView.builder(
                          itemCount: snapshot.data!.data.length,
                          itemBuilder: (context, index) {
                            final data = snapshot.data!.data[index];
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    child: Text(
                                  data!.name!,
                                  style: const TextStyle(fontSize: 20),
                                )),
                                const SizedBox(height: 10),
                                const Text('Number of trips'),
                                const SizedBox(height: 5),
                                SizedBox(
                                    child: data.trips == null
                                        ? const Text('null data')
                                        : Text(
                                            data.trips.toString(),
                                            style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )),
                                const SizedBox(height: 20),
                                Airlinedata(data: data)
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              }

              return const Text('no data');
            }),
      ),
    );
  }
}

class Airlinedata extends StatelessWidget {
  const Airlinedata({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Passenger? data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Center(
        child: Column(
          children: [
            Text(
              data!.airline[0]!.name!,
              style: const TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 10),
            Text(
              data!.airline[0]!.country!,
            ),
            const SizedBox(height: 10),
            Text(
              data!.airline[0]!.slogan!,
            ),
            const SizedBox(height: 10),
            Text(
              data!.airline[0]!.website!,
            ),
          ],
        ),
      ),
    );
  }
}
