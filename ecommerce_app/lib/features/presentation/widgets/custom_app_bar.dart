import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String htext;
  final String ntext;
  const CustomAppBar(this.htext, this.ntext, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF25A0A7),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: SafeArea(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    htext,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    ntext,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // const SizedBox(
            //   width: 60.0,
            // ),
            Container(
              height: 44.0,
              width: 44.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 1,
                  color: Colors.white,
                ),
              ),
              child: const Center(
                child: Icon(
                  Icons.search,
                  // size: 40,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 0.5,
                  color: Colors.white,
                ),
              ),
              child: const Center(
                child: Icon(
                  Icons.notifications,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 117);
}
