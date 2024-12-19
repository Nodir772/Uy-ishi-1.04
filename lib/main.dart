import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(const RecipeApp());

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoriesPage(),
    );
  }
}

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C0F0D),
      extendBody: true,
      appBar: AppBar(
        leadingWidth: 50,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Center(
            child: SizedBox(
              width: 21,
              height: 14,
              child: SvgPicture.asset(
                "assets/icons/back-arrow.svg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        title: const Text(
          "Categories",
          style: TextStyle(
            color: Color(0xFFFD5D69),
          ),
        ),
        actions: const [
          AppBarActionItem(
            image: "assets/icons/notification.svg",
            width: 12,
            height: 17,
          ),
          SizedBox(width: 5),
          AppBarActionItem(
            image: "assets/icons/search.svg",
            width: 14,
            height: 18,
          ),
          SizedBox(
            width: 20,
          )
        ],
        centerTitle: true,
        backgroundColor: const Color(0xFF1C0F0D),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          MainCategoryItem(image: "assets/seafood.png", text: "Seafood"),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(image: "assets/lunch.png", text: "Lunch"),
              CategoryItem(image: "assets/breakfast.png", text: "Breakfast"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(image: "assets/dinner.png", text: "Dinner"),
              CategoryItem(image: "assets/vegan.png", text: "Vegan"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(image: "assets/dessert.png", text: "Dessert"),
              CategoryItem(
                image: "assets/drinks.png",
                text: "Drinks",
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 281,
          height: 56,
          decoration: BoxDecoration(
            color: const Color(0xFFFD5D69),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset("assets/icons/home.svg"),
              SvgPicture.asset("assets/icons/community.svg"),
              SvgPicture.asset("assets/icons/categories.svg"),
              SvgPicture.asset("assets/icons/profile.svg"),
            ],
          ),
        ),
      ),
    );
  }
}

class AppBarActionItem extends StatelessWidget {
  const AppBarActionItem({
    super.key,
    required this.image,
    required this.width,
    required this.height,
  });

  final String image;
  final double width, height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        color: const Color(0xFFFFC6C9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: SizedBox(
          width: width,
          height: height,
          child: SvgPicture.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.image, required this.text});

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            width: 159,
            height: 145,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
        ),
      ],
    );
  }
}

class MainCategoryItem extends StatelessWidget {
  const MainCategoryItem({super.key, required this.image, required this.text});

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
        ),
        const SizedBox(height: 6),
        Center(
          child: SizedBox(
            width: 356,
            height: 149,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
