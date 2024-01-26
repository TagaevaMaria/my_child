import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../navigation/main_navigation.dart';

/// основная верстка экрана.
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/images/fon.jpg')),
        ),
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(top: 100),
            child: Center(
              child: Text(
                'Добро пожаловать!',
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 18),
            child: Center(
              child: Text('Мы рады, что вы выбрали Mom&Baby'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              child: Image.asset('assets/images/fon2.jpg'),
              height: 160,
              width: 300,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 100, left: 30),
            child: TextFieldAddBaby(),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text('Я здесь впервые'),
          ),
          ElevatedButton(
              onPressed: () => Navigator.of(context)
                  .pushNamed(MainNavigatorNames.screenMenu),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Войти'),
              ),
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                primary: const Color.fromRGBO(190, 150, 233, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              )),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text('У иеня уже есть аккаунт'),
          )
        ]),
      ),
    );
  }
}

class TextFieldAddBaby extends StatelessWidget {
  const TextFieldAddBaby({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: const Color.fromRGBO(255, 165, 216, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      onPressed: () => _addBaby(context),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "Добавить ребенка",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

/// виджет диалоговое окно ввода данных о ребенке.
Future<void> _addBaby(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Малыш'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              TextField(
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[А-Яа-яЁё]'))
                ],
                onTap: () {},
                onChanged: (value) => {'jj'},
                decoration: const InputDecoration(label: Text('имя малыша')),
              ),
              TextField(
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                ],
                decoration: InputDecoration(label: Text('день рождения')),
              ),
              const TextField(
                decoration: InputDecoration(label: Text('время рождения')),
              )
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Ок'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
