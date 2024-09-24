import 'package:app_store/src/config/custom_color.dart';
import 'package:app_store/src/pages/home/components/category_tile.dart';
import 'package:app_store/src/pages/home/components/item_tile.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:app_store/src/config/app_data.dart' as appData;

class HomeTab extends StatefulWidget {
  HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<String> categories = [
    'Frutas',
    'Temperos',
    'Legumes',
    'Frios',
    'Carnes',
    'Laticíneos'
  ];

  String selectedCategory = 'Frutas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text.rich(
          TextSpan(
            style: const TextStyle(
              fontSize: 30,
            ),
            children: [
              TextSpan(
                  text: 'Compre',
                  style: TextStyle(
                      color: CustomColor.customSwatchColor,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: 'Bem',
                  style: TextStyle(
                      color: CustomColor.customPurpleColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 15),
            child: GestureDetector(
              onTap: () {},
              child: badges.Badge(
                onTap: () {},
                badgeContent: const Text(
                  '0',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
                badgeAnimation: const badges.BadgeAnimation.fade(),
                badgeStyle: badges.BadgeStyle(
                  badgeColor:
                       Colors.black.withAlpha(200),
                ),
                child:  Icon(Icons.shopping_cart, color: CustomColor.customSwatchColor),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                isDense: true,
                hintText: 'Pesquisar',
                hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
                prefixIcon: Icon(Icons.search,
                    color: CustomColor.customSwatchColor, size: 21),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 25),
            height: 40,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return CategoryTile(
                    onPressed: () {
                      setState(() {
                        selectedCategory = categories[index];
                      });
                    },
                    category: categories[index],
                    isSelected: categories[index] == selectedCategory,
                  );
                },
                separatorBuilder: (_, index) => const SizedBox(width: 10),
                itemCount: categories.length),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 26),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Ofertas Especiais',
                  style: TextStyle(
                    color: CustomColor.customSwatchColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
               ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 9 / 11,
              ),
              itemCount: appData.items.length,
              itemBuilder: (_, index) {
                return ItemTile(
                  item: appData.items[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
