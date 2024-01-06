import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/font_size.dart';
import 'package:flash_food/Core/response_conf.dart';
import 'package:flash_food/Core/text_styles.dart';
import 'package:flash_food/Presentation/Cart/cart_view.dart';
import 'package:flash_food/Presentation/Chat/chat_view.dart';
import 'package:flash_food/Presentation/Main/home_view.dart';
import 'package:flash_food/Presentation/Profil/profil_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final _pages = [
    const HomeView(),
    const CartView(),
    const ChatView(),
    const ProfilView()
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    MathUtils.init(context);
    return Scaffold(
      body: _pages.elementAt(_currentIndex),
      bottomNavigationBar: Container(
        decoration: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x0F000000),
              blurRadius: 40,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) => setState(() {
            _currentIndex = value;
          }),
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          iconSize: getSize(24),
          selectedItemColor: Pallete.orangePrimary,
          selectedLabelStyle: TextStyles.bodySmallMedium.copyWith(
              fontSize: getFontSize(FontSizes.small)
          ),
          unselectedItemColor: Pallete.neutral50,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: "Cart",
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble), label: "Messenger"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
          ],
          elevation: 0,
        ),
      ),
    );
  }
}
