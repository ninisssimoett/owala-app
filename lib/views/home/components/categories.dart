import 'package:flutter/material.dart';
import 'package:owala_app/utils/consts.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

List<Map<String, dynamic>> categories = [
  {"icon": "assets/images/ic1.png", "text": "Shoes"},
  {"icon": "assets/images/ic2.png", "text": "Soccer"},
  {"icon": "assets/images/ic3.png", "text": "Bags"},
  {"icon": "assets/images/ic4.png", "text": "Accessories"},
  {"icon": "assets/images/ic5.png", "text": "Underwear"},
];

int selectedIndex = 0;

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Categories",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "View All",
                  style: TextStyle(
                    color: Color(0xFF236A91),
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: defaultPadding),
          SizedBox(
            height: 65,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) => _buildCategory(index),
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector _buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(
                10,
              ), // kurangi padding agar icon lebih kecil
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? primaryColor.withValues(alpha: 0.2)
                    : Colors.grey.withValues(alpha: 0.0),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                categories[index]["icon"], 
                width: 20, 
                height: 20,
                color: selectedIndex == index
                    ? primaryColor
                    : secondaryColor, 
              ),
            ),
            SizedBox(height: 7),
            Text(
              categories[index]["text"],
              style: TextStyle(
                color: selectedIndex == index ? primaryColor : secondaryColor,
                fontWeight: selectedIndex == index
                    ? FontWeight.bold
                    : FontWeight.normal,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
