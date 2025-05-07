import 'package:flutter/material.dart';

class Day20 extends StatelessWidget {
  const Day20({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text(
          'wanda.s',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              // color: Colors.red,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 180,
                    // color: Colors.orange,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              'https://th.bing.com/th/id/R.ab5d0971257ca5be15255fd15ba333bf?rik=Fu5ziUevv%2bLD3Q&pid=ImgRaw&r=0'),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Wande.S',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Photographer/NewYork',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // color: Colors.green,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                profileDetails('150', 'Posts'),
                                profileDetails('5K', 'Followers'),
                                profileDetails('100', 'Following'),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        'Follow',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 40,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.blue, width: 2),
                                  ),
                                  child: const Icon(
                                    Icons.arrow_downward,
                                    color: Colors.blue,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 120,
              // color: Colors.blue,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://th.bing.com/th/id/R.ab5d0971257ca5be15255fd15ba333bf?rik=Fu5ziUevv%2bLD3Q&pid=ImgRaw&r=0'),
                            ),
                            shape: BoxShape.circle,
                            color: Colors.orange,
                          ),
                        ),
                        const Text(
                          'Title',
                        ),
                      ],
                    );
                  }),
            ),
            // Container(
            //   height: 100,
            //   color: Colors.yellow,
            // ),
            Expanded(
                child: Container(
              // color: Colors.red,
              child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context, index){
                return Container(
                  margin: const EdgeInsets.all(5),
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                     image: const DecorationImage(
                              image: NetworkImage(
                                  'https://img.freepik.com/premium-photo/pair-foxes-playfully-tussle-sundappled-clearing-their-sharp-teeth-claws-flashing_1057859-6412.jpg'),
                            ),
                    color: Colors.grey[200],borderRadius: const BorderRadius.all(Radius.circular(10))),
                );
              },),
            ),),
          ],
        ),
      ),
    );
  }

  Widget profileDetails(String text, String message) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 24),
        ),
        Text(
          message,
          style: const TextStyle(fontSize: 14),
        )
      ],
    );
  }
}
