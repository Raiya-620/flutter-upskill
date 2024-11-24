import 'package:demo_app/controller/home_controller.dart';
import 'package:demo_app/screens/city_screen.dart';
import 'package:flutter/material.dart';

class RegionScreen extends StatefulWidget {
  final String countryIso2;
  const RegionScreen({super.key, required this.countryIso2});

  @override
  State<RegionScreen> createState() => _RegionScreenState();
}

class _RegionScreenState extends State<RegionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'States',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.purple,
        actions: const [],
      ),
      body: FutureBuilder(
          future: homeController.getStates(widget.countryIso2),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final data = snapshot.data;

              if (data != null && data.isNotEmpty) {
                return ListView.builder(
                  padding: const EdgeInsets.all(16.0),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final region = data[index];

                    return ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CityScreen(
                                      countrycode: region.countrycode,
                                      statecode: region.statecode,
                                    )));
                      },
                      title: Text(region.name),
                      subtitle: Text(region.statecode),
                    );
                  },
                );
              }

              return const Center(
                child: Text("Could not get any states data...."),
              );
            }

            return const Center(
              child: SizedBox.square(
                dimension: 50,
                child: CircularProgressIndicator(),
              ),
            );
          }),
    );
  }
}
