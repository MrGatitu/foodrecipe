import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    return Container(
      child: Text(
        '     All Recipes   \nOn Your Finger Tips ',
        textScaler: TextScaler.linear(2),
      ),
    );
  }
}

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 300.0),
        child: ElevatedButton(
            onPressed: () {},
            child: Text("Get Started "),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellowAccent,
              minimumSize: const Size(300, 50),
            )));
  }
}
