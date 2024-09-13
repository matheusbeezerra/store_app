import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:app_store/src/home/home_tab.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentIndex = 0;
  final pageController = PageController();

  final iconList = <IconData>[
    Icons.thumb_up_alt_outlined,
    Icons.shopping_cart_outlined,
    Icons.list,
    Icons.person_2_outlined,
  ];

  void onNavBarTapped(int index) {
    setState(() {
      currentIndex = index + 1;
      pageController.jumpToPage(currentIndex);  
    });
  }

  void onHomeTapped() {
    setState(() {
      currentIndex = 0;
      pageController.jumpToPage(0);  
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          const HomeTab(), // Página Home
          Container(color: Colors.white), // Página Thumb
          Container(color: Colors.white), // Página Carrinho
          Container(color: Colors.white), // Página Pedidos
          Container(color: Colors.white), // Página Perfil
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onHomeTapped, 
        backgroundColor: currentIndex == 0 ? Colors.white : Colors.red,
        child: Icon(
          Icons.home_outlined,
          color: currentIndex == 0 ? Colors.red : Colors.white,  // Animação de cor no ícone
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, 
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: currentIndex > 0 ? currentIndex - 1 : -1,  // Ignora o ícone Home
        gapLocation: GapLocation.center,  // Espaço reservado para o botão flutuante
        notchSmoothness: NotchSmoothness.verySmoothEdge,  
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: onNavBarTapped,
        backgroundColor: Colors.red,
        activeColor: Colors.white,
        inactiveColor: Colors.white.withAlpha(100),
      ),
    );
  }
}
