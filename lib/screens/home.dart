import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:peapod/components/productCard.dart';
import 'package:peapod/components/topPickCard.dart';
import 'package:peapod/constants/Appcolors.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int n = 10;
  final List<bool> _selected = [];

  final List<String> _items = [
    'strawbery',
    'banana',
    'watermelon',
    'capsicum',
    'cabbage',
    'tomato',
  ];

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < n; i++) {
      _selected.add(false);
    }
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: screenWidth * 0.1,
                      width: screenWidth * 0.1,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[200],
                      ),
                      child: IconButton(
                        iconSize: screenWidth * 0.055,
                        onPressed: () {
                          Fluttertoast.showToast(msg: "Menue button pressed");
                        },
                        icon: const Icon(Icons.menu),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.05),
                    const Text(
                      'Home',
                      style: TextStyle(
                          color: AppColors.textPrimary,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Container(
                      height: screenWidth * 0.1,
                      width: screenWidth * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        iconSize: screenWidth * 0.055,
                        splashRadius: screenWidth * 0.05,
                        onPressed: () {
                          Fluttertoast.showToast(msg: "wallet button pressed");
                        },
                        icon: const Icon(Icons.account_balance_wallet),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.02),
                Row(
                  children: [
                    Container(
                      width: screenWidth * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      decoration: const BoxDecoration(
                        color: AppColors.primaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        splashRadius: screenWidth * 0.05,
                        onPressed: () {
                          Fluttertoast.showToast(msg: "wallet button pressed");
                        },
                        icon: const Icon(Icons.tune),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.02),
                CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 1,
                    height: screenHeight * 0.2,
                    autoPlay: true,
                    enlargeCenterPage: false,
                  ),
                  items: [1, 2, 3].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image(
                                image: AssetImage('assets/carousel_$i.jpg'),
                                fit: BoxFit.cover,
                              )),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(height: screenHeight * 0.02),
                Row(
                  children: [
                    const Text(
                      'Categories',
                      style: TextStyle(
                          color: AppColors.textPrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See All Categories',
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
                SizedBox(height: screenHeight * 0.005),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int index = 0; index < n; index++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FilterChip(
                            selectedColor: AppColors.primaryColor,
                            label: Text('Item ${index + 1}'),
                            selected: _selected[index],
                            onSelected: (bool value) {
                              setState(() {
                                _selected[index] = value;
                              });
                            },
                          ),
                        ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Top Picks',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    TopPickCard(
                      title: 'Banana',
                      price: "2.39",
                      quantity: "6-7, 2-3lb",
                      imageUrl: 'assets/banana.jpg',
                    ),
                    TopPickCard(
                      title: 'Latuce',
                      price: "10.39",
                      quantity: "Aprox. 1 lb",
                      imageUrl: 'assets/latuce.jpg',
                    ),
                    TopPickCard(
                      title: 'Almond',
                      price: "8.99",
                      quantity: "16 oz",
                      imageUrl: 'assets/almond.jpg',
                    ),
                  ]),
                ),
                SizedBox(height: screenHeight * 0.02),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Discover',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                GridView.count(
                  crossAxisCount: 2, // Number of columns
                  childAspectRatio: (screenWidth / 2) /
                      (screenHeight / 2.5) *
                      1.3, // Aspect ratio of each child
                  shrinkWrap:
                      true, // This will make the GridView adapt its height to its content
                  physics:
                      const NeverScrollableScrollPhysics(), // This will disable scrolling for the GridView
                  children: List.generate(6, (index) {
                    return productCard(
                      title: _items[index],
                      price: "2.39",
                      quantity: "6-7, 2-3lb",
                      imageUrl: 'assets/${_items[index]}.jpg',
                    );
                  }),
                ),
                SizedBox(height: screenHeight * 0.005),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 50), // Set the padding inside the button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          20), // Set the shape of the button
                    ),
                  ),
                  onPressed: () => (),
                  child: const Text(
                    'See All',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
