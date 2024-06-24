import 'package:flutter/material.dart';
import './screen_2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 4, 185, 4),
        body: Column(
          children: [ImageContainer(), TextContainer(), ButtonContainer()],
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 150.0, right: 20.0),
        child: Image.asset(
          './assets/Dish2.png',
          width: 300,
          height: 300,
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}

class TextContainer extends StatelessWidget {
  const TextContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 60.0),
      child: const Text(
        '      All Recipes 🥗   \nOn Your Finger Tips ',
        textScaler: TextScaler.linear(2),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 231, 247, 88),
        ),
      ),
    );
  }
}

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 250.0),
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen2(),
                  ));
            },
            child: const Text("Get Started "),
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 4, 185, 4),
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              minimumSize: const Size(300, 50),
            )));
  }
}
