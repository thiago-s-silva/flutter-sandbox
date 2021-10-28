import 'package:flutter/material.dart';
import 'package:flutter_sandbox/pages/home_page.dart';
import 'package:flutter_sandbox/pages/library_page.dart';
import 'package:flutter_sandbox/pages/subscriptions_page.dart';
import 'package:flutter_sandbox/pages/tranding_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = const [
      HomePage(),
      TrandingPage(),
      SubscriptionsPage(),
      LibraryPage()
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black, opacity: 0.7),
        title: Image.asset(
          "images/youtube.png",
          width: 98,
          height: 22,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.video_camera_back_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.account_circle_rounded),
            onPressed: () {},
          )
        ],
      ),
      body: Center(child: pages[_index]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (selectedIndex) {
          setState(() {
            _index = selectedIndex;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items: const [
          BottomNavigationBarItem(label: "Início", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Em alta", icon: Icon(Icons.whatshot)),
          BottomNavigationBarItem(
              label: "Inscrições", icon: Icon(Icons.subscriptions)),
          BottomNavigationBarItem(
              label: "Biblioteca", icon: Icon(Icons.folder)),
        ],
      ),
    );
  }
}
