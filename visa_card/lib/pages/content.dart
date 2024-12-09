import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visa_card/utils/text.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            right: -150,
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1), shape: BoxShape.circle),
            ),
          ),
          Positioned(
            left: -200,
            bottom: -470,
            child: Container(
              height: 600,
              width: 600,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1), shape: BoxShape.circle),
            ),
          ),
          Positioned(
            top: 25,
            left: 15,
            child: Container(
              height: 30,
              child: Image.asset('asset/logo.png'),
            ),
          ),
          Positioned(
            top: 62,
            left: 25,
            child: ModifiedText(
              text: 'it\'s where you want to be',
              color: Colors.grey.shade900,
              size: 14,
            ),
          ),
          Positioned(
            bottom: 30,
            left: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '5678 4321 8700',
                  style: GoogleFonts.sourceCodePro(
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                Text(
                  'SURAIYA MOHAMMED',
                  style: GoogleFonts.sourceCodePro(
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            child: Container(
              height: 80,
              child: Image.asset('asset/chip.png'),
            ),
          ),
        ],
      ),
    );
  }
}
