import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

class Screen2 extends StatelessWidget {
  Screen2({super.key});

  final String assetName = '.assets/home.svg';
  final Widget svg = SvgPicture.asset(
    'assets/home.svg',
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const Column(
          children: [
            SearchBar(),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/home.svg',
                  width: 24,
                  height: 24,
                ),
              )),
              Expanded(
                  child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/bell.svg',
                  width: 24,
                  height: 24,
                ),
              )),
              Expanded(
                  child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/heart.svg',
                  width: 24,
                  height: 24,
                ),
              )),
              Expanded(
                  child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/user.svg',
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

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController textEditingController = TextEditingController();

  void handleSubmitted(String input) {
    // Process the input
    print("User input: $input");
    // Additional processing can be done here
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 10.0),
      child: AnimSearchBar(
        width: 400,
        textController: TextEditingController(),
        onSuffixTap: () {
          setState(() {
            textEditingController.clear();
          });
        },
        onSubmitted: handleSubmitted,
      ),
    );
  }
}
