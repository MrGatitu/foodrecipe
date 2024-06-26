import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: const Column(
          children: [
            SearchBar(),
            OptionsContainer(),
            TextCntr(),
            RecipeContainer()
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(255, 83, 83, 83),
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
                  colorFilter: ColorFilter.mode(
                      Color.fromARGB(255, 92, 247, 105), BlendMode.srcIn),
                ),
              )),
              Expanded(
                  child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/bell.svg',
                  width: 24,
                  height: 24,
                  colorFilter: ColorFilter.mode(
                      Color.fromARGB(255, 92, 247, 105), BlendMode.srcIn),
                ),
              )),
              Expanded(
                  child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/heart.svg',
                  width: 24,
                  height: 24,
                  colorFilter: ColorFilter.mode(
                      Color.fromARGB(255, 92, 247, 105), BlendMode.srcIn),
                ),
              )),
              Expanded(
                  child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/user.svg',
                  width: 24,
                  height: 24,
                  colorFilter: ColorFilter.mode(
                      Color.fromARGB(255, 92, 247, 105), BlendMode.srcIn),
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
        searchIconColor: Color.fromARGB(255, 92, 247, 105),
        textFieldColor: Color.fromARGB(255, 92, 247, 105),
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

class OptionsContainer extends StatelessWidget {
  const OptionsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Center(child: Text('Breakfast')),
                //color: Colors.red,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 159, 245, 166),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 40.0,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Center(child: Text('Lunch')),
                //color: Colors.red,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 159, 245, 166),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                height: 40.0,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Center(child: Text('Snack')),
                //color: Colors.red,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 159, 245, 166),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 40.0,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Center(child: Text('Dinner')),
                //color: Colors.red,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 159, 245, 166),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 40.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TextCntr extends StatelessWidget {
  const TextCntr({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 15.0, right: 185.0),
      child: Text(
        'Popular Meals 🥗',
        textAlign: TextAlign.end,
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}

class RecipeContainer extends StatelessWidget {
  const RecipeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: SingleChildScrollView(
        child: CustomScrollView(
          shrinkWrap: true,
          primary: false,
          slivers: [
            SliverPadding(
              padding: EdgeInsets.all(10.0),
              sliver: SliverGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 204, 252, 208),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/Dish1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Dish 1',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Add more containers for other dishes as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
