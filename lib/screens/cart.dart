import 'package:flutter/material.dart';
import 'package:peapod/components/CartItem.dart';
import 'package:peapod/constants/Appcolors.dart';

class cart extends StatelessWidget {
  const cart({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: screenHeight, // Add this
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: screenWidth * 0.06, horizontal: screenWidth * 0.05),
              height: screenHeight,
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(color: AppColors.secondaryColor),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SafeArea(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                      height: screenHeight * 0.1,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: screenWidth * 0.1,
                              width: screenWidth * 0.1,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey[300]!),
                              ),
                              child: IconButton(
                                iconSize: screenWidth * 0.055,
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.pushNamed(context, '/bottomnavigation');
                                },
                                icon: const Icon(Icons.arrow_back_ios_rounded),
                              ),
                            ),
                            const Text(
                              'Cart',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              height: screenWidth * 0.1,
                              width: screenWidth * 0.1,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey[300]!),
                              ),
                              child: IconButton(
                                iconSize: screenWidth * 0.055,
                                onPressed: () {},
                                icon: const Icon(Icons.close_rounded),
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Container(
                    //height: screenHeight * 0.8,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                      child: Column(
                        children: [
                          const Column(
                            children: [
                              CartItems(
                                title: 'capsicum',
                                price: "2.39",
                                quantity: "6-7, 2-3lb",
                                imageUrl: 'assets/capsicum.jpg',
                              ),
                              CartItems(
                                title: 'tomato',
                                price: "2.39",
                                quantity: "6-7, 2-3lb",
                                imageUrl: 'assets/tomato.jpg',
                              ),
                              CartItems(
                                title: 'strawbery',
                                price: "2.39",
                                quantity: "6-7, 2-3lb",
                                imageUrl: 'assets/strawbery.jpg',
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(children: [
                                  Icon(
                                    Icons.discount_rounded,
                                    color: Colors.grey[600],
                                  ),
                                  const SizedBox(width: 10),
                                  Text('Promo',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[600]))
                                ]),
                              ),
                              SizedBox(
                                width: screenWidth * 0.3,
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.white, backgroundColor: AppColors.primaryColor,
                                  ),
                                  child: const Text('Apply'),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Subtotal',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[600]),
                              ),
                              Text(
                                '\$500.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[600]),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Discount',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[600]),
                              ),
                              Text(
                                '35%',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[600]),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Shipping',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[600]),
                              ),
                              Text(
                                '-\$25.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[600]),
                              ),
                            ],
                          ),
                          const Divider(
                            color: Colors.black,
                            height: 20,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                '\$475.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
