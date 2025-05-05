import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'AnimatedText Widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Suraiya Mohammed',
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  speed: Duration(
                    milliseconds: 100,
                  ),
                ),
              ],
              // pause: Duration(milliseconds: 100),
              // displayFullTextOnTap: true,
              // stopPauseOnTap: true,
              // totalRepeatCount: 4,
            ),
            AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText(
                  'HELLO',
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.red),
                ),
                RotateAnimatedText(
                  'BEAUTIFUL',
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.red),
                ),
                RotateAnimatedText(
                  'WORLD',
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )
              ],
            ),
            AnimatedTextKit(animatedTexts: [
              WavyAnimatedText('HELLO WORLD',
                  textStyle: TextStyle(fontSize: 30)),
              WavyAnimatedText('HELLO WORLD',
                  textStyle: TextStyle(fontSize: 30))
            ])
          ],
        ),
      ),
    );
  }
}
