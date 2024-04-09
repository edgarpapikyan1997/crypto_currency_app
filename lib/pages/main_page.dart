import 'package:fintech_app/pages/favorites.dart';
import 'package:fintech_app/pages/home_page.dart';
import 'package:fintech_app/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../store/bottom_bar_navigation/bottom_bar_navigation.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final navigation = BottomNavigationStore();
  final PageController pageController = PageController();

  void animateToPage(int page, PageController controller) {
    controller.animateToPage(page,
        duration: const Duration(milliseconds: 500), curve: Curves.decelerate);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        bottomNavigationBar: Observer(builder: (_) {
          return BottomNavigationBar(
            currentIndex: navigation.currentIndex,
            onTap: (index) {
              navigation.currentIndex = index;
              animateToPage(index, pageController);
              print(navigation.currentIndex);
            },
            fixedColor: Colors.blueAccent,
            backgroundColor: Colors.blueGrey.shade100,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.blueGrey,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.blueGrey,
                  ),
                  label: 'Favorites'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.blueGrey,
                  ),
                  label: 'Settings'),
            ],
          );
        }),
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade200,
        ),
        body: SizedBox(
          child: PageView(
            controller: pageController,
            children: const <Widget>[
              Center(
                child: HomePage(),
              ),
              Center(
                child: Favorites(),
              ),
              Center(
                child: SettingsPage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
