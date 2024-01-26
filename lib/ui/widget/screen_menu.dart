import 'package:flutter/material.dart';

class ScreenMenu extends StatelessWidget {
  const ScreenMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/fon.jpg',
                  )),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: MyRow(
                    iconOne: Image.asset(
                      'assets/images/doctor.png',
                      height: 80,
                      width: 80,
                    ),
                    iconTwo: Image.asset(
                      'assets/images/development.png',
                      height: 80,
                      width: 80,
                    ),
                    iconThree: Image.asset('assets/images/height_weight.png',
                        height: 80, width: 80),
                    textOne: 'Запись к доктору',
                    textTwo: 'Достижения',
                    textThree: 'Рост и вес',
                    oneFunction: () {},
                    twoFunction: () {},
                    threeFunction: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: MyRow(
                    iconOne: Image.asset('assets/images/foto.png',
                        height: 80, width: 80),
                    textOne: 'Фото',
                    iconTwo: Image.asset('assets/images/notes.png',
                        height: 80, width: 80),
                    textTwo: 'Заметки',
                    iconThree: Image.asset('assets/images/allergy.png',
                        height: 80, width: 80),
                    textThree: 'Аллергия',
                    oneFunction: () {},
                    twoFunction: () {},
                    threeFunction: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: MyRow(
                    iconOne: Image.asset('assets/images/vaccinations.png',
                        height: 80, width: 80),
                    textOne: 'Прививки',
                    iconTwo: Image.asset('assets/images/victories.png',
                        height: 80, width: 80),
                    textTwo: "Достижения",
                    iconThree: Image.asset('assets/images/sleep.png',
                        height: 80, width: 80),
                    textThree: "Колыбельные",
                    oneFunction: () {},
                    twoFunction: () {},
                    threeFunction: () {},
                  ),
                )
              ],
            )));
  }
}

class MyRow extends StatelessWidget {
  final Image iconThree;
  final String textOne;
  final Image iconTwo;
  final String textTwo;
  final Image iconOne;
  final String textThree;
  final Function oneFunction;
  final Function twoFunction;
  final Function threeFunction;

  const MyRow({
    Key? key,
    required this.iconOne,
    required this.textOne,
    required this.iconTwo,
    required this.textTwo,
    required this.iconThree,
    required this.textThree,
    required this.oneFunction,
    required this.twoFunction,
    required this.threeFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextButton(
                onPressed: () {},
                child: iconOne,
              ),
              Text(textOne)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextButton(onPressed: () {}, child: iconTwo),
              Text(textTwo)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextButton(onPressed: () {}, child: iconThree),
              Text(textThree)
            ],
          ),
        )
      ],
    );
  }
}
