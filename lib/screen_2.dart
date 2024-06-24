import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Screen2 extends StatelessWidget {
  Screen2({super.key});

  final String assetName = '.assets/home.svg';
  final Widget svg = SvgPicture.asset(
    '.assets/home.svg',
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  this.assetName,
                  width: 24,
                  height: 24,
                ),
              )),
              Expanded(
                  child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  '.assets/bell.svg',
                  width: 24,
                  height: 24,
                ),
              )),
              Expanded(
                  child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  '.assets/heart.svg',
                  width: 24,
                  height: 24,
                ),
              )),
              Expanded(
                  child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  '.assets/user.svg',
                  width: 24,
                  height: 24,
                ),
              ))
              //Image.asset('.assets/home.svg'),
              //Image.asset('.assets/bell.svg'),
              //Image.asset('.assets/heart.svg'),
              //Image.asset('.assets/user.svg')
            ],
          ),
        ),
      ),
    );
  }
}
