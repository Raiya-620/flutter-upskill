import 'package:demo_app/screens/region_screen.dart';
import 'package:flutter/material.dart';
import '../controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Countries',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.purple,
      ),
      body: FutureBuilder(
        future: homeController.getCountries(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data;

            if (data != null && data.isNotEmpty) {
              return ListView.builder(
                padding: const EdgeInsets.all(16.0),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final country = data[index];

                  return ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegionScreen(countryIso2: country.iso2),
                            
                          ),
                         
                          
                          
                          );
                          
                    },
                    title: Text(country.name),
                    subtitle: Text(country.iso2),
                  );
                },
              );
            }

            return const Center(
              child: Text("Could not get any country data...."),
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

