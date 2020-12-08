import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_app_refka/main_menu.dart';
import 'package:food_app_refka/cart_menu.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController();
  List<Widget> pages = [
    MainMenu(),
    CartMenu()
  ];
  int selectedIndex = 0;
  void onPageChanged(int index){
    setState(() {
      selectedIndex = index;
    });
  }
  void onItemTapped(int index){
    setState(() {
      pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    Color menuButtonColor = Colors.greenAccent;
    Color avatarColor = Colors.green;
    Color iconColor = Colors.grey[100];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(
                  'images/banana2.png',
                )
            ),
            CircleAvatar(
              backgroundColor: avatarColor,
              radius: 20.0,
              child: Icon(
                Icons.person_outline,
                color: iconColor,
              ),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: PageView(
        controller: pageController,
        children: pages,
        physics: BouncingScrollPhysics(),
        onPageChanged: onPageChanged,
      ),
      // bottomNavigationBar: CurvedNavigationBar(
      //   color: Colors.amberAccent,
      //   buttonBackgroundColor: Colors.transparent,
      //   backgroundColor: Colors.transparent,
      //   height: 45.0,
      //   animationDuration: Duration(
      //     milliseconds: 300
      //   ),
      //   items: <Widget>[
      //     Icon(
      //       Icons.home,
      //       size: 20.0,
      //       color: Colors.black,
      //     ),
      //     Icon(
      //       Icons.shopping_cart,
      //       size: 20.0,
      //       color: Colors.black,
      //     )
      //   ],
      // )
      bottomNavigationBar: SizedBox(
        height: 45.0,
        child: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              title: Text(
                  'Home'
              ),
              icon: Icon(
                Icons.home,
                size: 15.0,
              ),
            ),
            BottomNavigationBarItem(
                title: Text(
                    'Cart'
                ),
                icon: Icon(
                  Icons.shopping_cart,
                  size: 15.0,
                )
            )
          ],
          currentIndex: selectedIndex,
          selectedItemColor: menuButtonColor,
          unselectedItemColor: Colors.grey,
          onTap: onItemTapped,
        ),
      ),
    );
  }
}
