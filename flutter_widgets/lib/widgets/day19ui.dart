import 'package:flutter/material.dart';

class day19 extends StatefulWidget {
  const day19({super.key});

  @override
  State<day19> createState() => _day19State();
}

class _day19State extends State<day19> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    // color: Colors.red,
                    height: 500,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            height: 450,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://img.freepik.com/premium-photo/pair-foxes-playfully-tussle-sundappled-clearing-their-sharp-teeth-claws-flashing_1057859-6412.jpg'),
                                  fit: BoxFit.cover),
                              color: Colors.yellow,
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 0,
                          right: 24,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.ab5d0971257ca5be15255fd15ba333bf?rik=Fu5ziUevv%2bLD3Q&pid=ImgRaw&r=0'),
                            radius: 40,
                          ),
                        ),
                        const Positioned(
                          top: 30,
                          left: 24,
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        const Positioned(
                          top: 30,
                          right: 24,
                          child: Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(20),
              // color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Madrid City Tour for Designers',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'This is a random text about the topic',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade200,
                        fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      rowIconText('20', Icons.favorite_outlined),
                      rowIconText('34', Icons.upload),
                      rowIconText('82', Icons.message),
                      rowIconText('295', Icons.face),
                    ],
                  ),
                  const Divider(),
                  Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                          "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 5,
        ),
        Icon(icon)
      ],
    );
  }
}
