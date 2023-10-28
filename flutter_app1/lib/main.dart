import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstPage()),
                );
              },
              child: Text('Первый макет'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              child: Text('Второй макет'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdPage()),
                );
              },
              child: Text('Третий макет'),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  static const IconData devices_rounded =
      IconData(0xf6a8, fontFamily: 'MaterialIcons');
  static const IconData expand_more_sharp =
      IconData(0xe941, fontFamily: 'MaterialIcons');
  static const IconData menu = IconData(0xe3dc, fontFamily: 'MaterialIcons');
  static const IconData shortcut =
      IconData(0xe59e, fontFamily: 'MaterialIcons');
  static const IconData more_vert =
      IconData(0xe404, fontFamily: 'MaterialIcons');
  static const IconData heart_broken_rounded =
      IconData(0xf032e, fontFamily: 'MaterialIcons');
  static const IconData skip_previous =
      IconData(0xe5be, fontFamily: 'MaterialIcons');
  static const IconData skip_next =
      IconData(0xe5bd, fontFamily: 'MaterialIcons');
  static const IconData play_circle_sharp =
      IconData(0xebc4, fontFamily: 'MaterialIcons');
  static const IconData favorite =
      IconData(0xe25b, fontFamily: 'MaterialIcons');
  static const IconData repeat_rounded =
      IconData(0xf00f7, fontFamily: 'MaterialIcons');
  static const IconData h_plus_mobiledata =
      IconData(0xe2f0, fontFamily: 'MaterialIcons');
  static const IconData text_fields =
      IconData(0xe649, fontFamily: 'MaterialIcons');
  static const IconData alarm_rounded =
      IconData(0xf553, fontFamily: 'MaterialIcons');
  static const IconData shuffle = IconData(0xe5a1, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    double _sliderValue = 0.0;

    return Scaffold(
      appBar: AppBar(
        title: Text('Первый макет'),
      ),
      backgroundColor: Color.fromARGB(255, 109, 108, 108),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 1.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  expand_more_sharp,
                  size: 35,
                  color: const Color.fromARGB(255, 158, 156, 156),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Text(
                    'Сейчас играет',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 162, 159, 159),
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      devices_rounded,
                      size: 32,
                      color: const Color.fromARGB(255, 158, 156, 156),
                    ),
                    SizedBox(width: 20),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(
                        menu,
                        size: 32,
                        color: const Color.fromARGB(255, 158, 156, 156),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text(
            'Плейлист «Мне нравится»',
            style: TextStyle(
              fontSize: 12,
              color: Color.fromARGB(255, 206, 203, 203),
            ),
          ),
          Positioned(
            child: Container(
              margin: EdgeInsets.only(top: 50, bottom: 50),
              width: 265,
              height: 265,
              child: Image.asset(
                'assets/ls.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Text(
                      'Lizard Skin',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 234, 229, 229),
                      ),
                    ),
                  ),
                  SizedBox(width: 190),
                  Icon(
                    shortcut,
                    size: 30,
                    color: Color.fromARGB(255, 153, 151, 151),
                  ),
                  SizedBox(width: 20),
                  Icon(
                    more_vert,
                    size: 30,
                    color: Color.fromARGB(255, 153, 151, 151),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  'The Truth Is Out There - Lizard Skin',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 234, 229, 229),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Slider(
              min: 0.0,
              max: 100.0,
              value: _sliderValue,
              onChanged: (value) {
                _sliderValue = value;
              },
              inactiveColor: Colors.grey,
              thumbColor: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  '00:00',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 153, 151, 151),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Text(
                  '3:50',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 153, 151, 151),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  heart_broken_rounded,
                  size: 32,
                  color: Color.fromARGB(255, 153, 151, 151),
                ),
                Icon(
                  skip_previous,
                  size: 40,
                  color: Colors.white,
                ),
                Icon(
                  play_circle_sharp,
                  size: 86,
                  color: Colors.white,
                ),
                Icon(
                  skip_next,
                  size: 40,
                  color: Colors.white,
                ),
                Icon(
                  favorite,
                  size: 32,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 55),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  repeat_rounded,
                  size: 30,
                  color: Color.fromARGB(255, 153, 151, 151),
                ),
                Icon(
                  h_plus_mobiledata,
                  size: 30,
                  color: Colors.white,
                ),
                Icon(
                  text_fields,
                  size: 30,
                  color: Color.fromARGB(255, 153, 151, 151),
                ),
                Icon(
                  alarm_rounded,
                  size: 30,
                  color: Color.fromARGB(255, 153, 151, 151),
                ),
                Icon(
                  shuffle,
                  size: 30,
                  color: Color.fromARGB(255, 153, 151, 151),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  static const IconData fingerprint =
      IconData(0xe287, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Второй макет'),
      ),
      backgroundColor: Color.fromARGB(255, 43, 42, 42),
      body: Center(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: MediaQuery.of(context).size.height * 2 / 7,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(bottom: 500),
                  child: Text(
                    'Вячеслав',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 1 / 3 + 40,
              left: MediaQuery.of(context).size.width * 1 / 5 - 10,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 125, 123, 123),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 1 / 3 + 40,
              left: MediaQuery.of(context).size.width * 2 / 5 - 10,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 125, 123, 123),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 1 / 3 + 40,
              left: MediaQuery.of(context).size.width * 3 / 5 - 10,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 125, 123, 123),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 1 / 3 + 40,
              left: MediaQuery.of(context).size.width * 4 / 5 - 10,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 125, 123, 123),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          '2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '4',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          '5',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '6',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '7',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          '8',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '9',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Text(
                          'Выйти',
                          style: TextStyle(
                            color: Color.fromARGB(255, 153, 151, 151),
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          '0',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Icon(
                          fingerprint,
                          size: 32,
                          color: Color.fromARGB(255, 153, 151, 151),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  static const IconData arrow_back_outlined =
      IconData(0xee85, fontFamily: 'MaterialIcons', matchTextDirection: true);
  static const IconData search = IconData(0xe567, fontFamily: 'MaterialIcons');
  static const IconData more_vert =
      IconData(0xe404, fontFamily: 'MaterialIcons');
  static const IconData chat_bubble_outline_outlined =
      IconData(0xef42, fontFamily: 'MaterialIcons');
  static const IconData lock_outline =
      IconData(0xe3b1, fontFamily: 'MaterialIcons');
  static const IconData notifications_outlined =
      IconData(0xf237, fontFamily: 'MaterialIcons');
  static const IconData memory = IconData(0xe3db, fontFamily: 'MaterialIcons');
  static const IconData battery_charging_full =
      IconData(0xe0d1, fontFamily: 'MaterialIcons');
  static const IconData folder_outlined =
      IconData(0xf091, fontFamily: 'MaterialIcons');
  static const IconData devices_rounded =
      IconData(0xf6a8, fontFamily: 'MaterialIcons');
  static const IconData public = IconData(0xe4f0, fontFamily: 'MaterialIcons');
  static const IconData star = IconData(0xe5f9, fontFamily: 'MaterialIcons');
  static const IconData chat_outlined =
      IconData(0xef44, fontFamily: 'MaterialIcons');
  static const IconData help_outline =
      IconData(0xe30b, fontFamily: 'MaterialIcons', matchTextDirection: true);
  static const IconData check_circle_outline =
      IconData(0xe15a, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Третий макет'),
      ),
      backgroundColor: Color.fromARGB(255, 39, 38, 38),
      body: Container(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 9),
                  child: Icon(
                    arrow_back_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                ClipOval(
                  child: Image.asset(
                    'assets/an.jpg',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 6),
                  child: Column(
                    children: [
                      Text(
                        'Слава',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        'в сети',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 92, 91, 91),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 90),
                Container(
                  margin: EdgeInsets.only(top: 11),
                  child: Row(
                    children: [
                      Icon(
                        search,
                        size: 30,
                        color: Colors.white,
                      ),
                      SizedBox(width: 20),
                      Icon(
                        more_vert,
                        size: 30,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              height: 25,
              thickness: 10,
              color: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 20),
              child: Text(
                'Настройки',
                style: TextStyle(
                  color: Color.fromARGB(255, 154, 123, 10),
                  fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 20),
              child: Row(
                children: [
                  Icon(
                    chat_bubble_outline_outlined,
                    size: 33,
                    color: const Color.fromARGB(255, 92, 91, 91),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Настройки чатов',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 20),
              child: Row(
                children: [
                  Icon(
                    lock_outline,
                    size: 33,
                    color: const Color.fromARGB(255, 92, 91, 91),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Конфиденциальность',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 15),
              child: Row(
                children: [
                  Icon(
                    notifications_outlined,
                    size: 33,
                    color: const Color.fromARGB(255, 92, 91, 91),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Уведомления и звуки',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 15),
              child: Row(
                children: [
                  Icon(
                    memory,
                    size: 33,
                    color: const Color.fromARGB(255, 92, 91, 91),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Данные и память',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 15),
              child: Row(
                children: [
                  Icon(
                    battery_charging_full,
                    size: 33,
                    color: const Color.fromARGB(255, 92, 91, 91),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Энергосбережение',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 15),
              child: Row(
                children: [
                  Icon(
                    folder_outlined,
                    size: 33,
                    color: const Color.fromARGB(255, 92, 91, 91),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Папки с чатами',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 15),
              child: Row(
                children: [
                  Icon(
                    devices_rounded,
                    size: 33,
                    color: const Color.fromARGB(255, 92, 91, 91),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Устройства',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 15),
              child: Row(
                children: [
                  Icon(
                    public,
                    size: 33,
                    color: const Color.fromARGB(255, 92, 91, 91),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Язык',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(width: 210),
                  Text(
                    'Русский',
                    style: TextStyle(
                      color: Color.fromARGB(255, 154, 123, 10),
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 25,
              thickness: 10,
              color: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 5, bottom: 5),
              child: Row(
                children: [
                  Icon(
                    star,
                    size: 33,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Telegram Premium',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 25,
              thickness: 10,
              color: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 10),
              child: Text(
                'Помощь',
                style: TextStyle(
                  color: Color.fromARGB(255, 154, 123, 10),
                  fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 25,
                top: 10,
              ),
              child: Row(
                children: [
                  Icon(
                    chat_outlined,
                    size: 33,
                    color: const Color.fromARGB(255, 92, 91, 91),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Задать вопрос',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 25,
                top: 10,
              ),
              child: Row(
                children: [
                  Icon(
                    help_outline,
                    size: 33,
                    color: const Color.fromARGB(255, 92, 91, 91),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Вопросы о Telegram',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 25,
                top: 10,
              ),
              child: Row(
                children: [
                  Icon(
                    check_circle_outline,
                    size: 33,
                    color: const Color.fromARGB(255, 92, 91, 91),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Политика конфиденциальности',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
