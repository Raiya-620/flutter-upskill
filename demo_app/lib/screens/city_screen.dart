import 'package:demo_app/controller/home_controller.dart';
import 'package:flutter/material.dart';

class CityScreen extends StatefulWidget {
  final String countrycode;
  final String statecode;
  const CityScreen(
      {super.key, required this.countrycode, required this.statecode});

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cities',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.purple,
        actions: const [],
      ),
      body: FutureBuilder(
        future: homeController.getCities(widget.countrycode, widget.statecode),
        builder: (build, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data;

            if (data != null && data.isNotEmpty) {
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (build, index) {
                  final city = data[index];

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ListBody(
                      children: [Text(city.name), Text(city.statecode)],
                    ),
                  );
                },
              );
            }

            return const Center(
              child: Text('Could not get any City data....'),
            );
          }
          return const Center(
            child: SizedBox.square(
              dimension: 50,
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
