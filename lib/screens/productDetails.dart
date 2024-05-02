import 'package:flutter/material.dart';
import 'package:peapod/constants/Appcolors.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int currentNumber = 1;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(children: [
            Container(
              height: screenHeight * 0.3,
              decoration:  BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(screenWidth * 0.2),
                    bottomRight: Radius.circular(screenWidth * 0.2)),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.05, vertical: screenHeight * 0.02),
              child: Column(
                children: [
                  Row(
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
                          },
                          icon: const Icon(Icons.arrow_back_ios_new_rounded),
                        ),
                      ),
                      const Spacer(),
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
                          icon: const Icon(Icons.favorite_border_rounded),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.02),
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
                          icon: const Icon(Icons.shopping_cart_checkout_rounded),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.14),
                    child: CircleAvatar(
                      radius: screenWidth * 0.35,
                      backgroundImage: const AssetImage('assets/pasta.jpg'),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Pasta',
                            style: TextStyle(
                                fontSize: screenWidth * 0.06,
                                fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          Container(
                            height: screenHeight * 0.05,
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                border: Border.all(color: Colors.grey[300]!),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                IconButton(
                                  icon: const Icon(Icons.remove),
                                  iconSize: screenWidth * 0.05,
                                  color: Colors.white,
                                  onPressed: () {
                                    setState(() {
                                      if (currentNumber > 0) {
                                        currentNumber--;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  '$currentNumber',
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.add),
                                  iconSize: screenWidth * 0.05,
                                  color: Colors.white,
                                  onPressed: () {
                                    setState(() {
                                      currentNumber++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Description',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(height: screenHeight * 0.02),
                            const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.07),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: screenWidth * 0.28,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(30)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      const Text('Delevary'),
                                      SizedBox(
                                        height: screenHeight * 0.001,
                                      ),
                                      const Text('30 Min'),
                                    ],
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                width: screenWidth * 0.28,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(30)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      const Text('Calories'),
                                      SizedBox(
                                        height: screenHeight * 0.001,
                                      ),
                                      const Text('250'),
                                    ],
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                width: screenWidth * 0.28,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(30)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      const Text('Rating'),
                                      SizedBox(
                                        height: screenHeight * 0.001,
                                      ),
                                      const Text('5'),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.03),
                          Container(
                            height: screenHeight * 0.08,
                            width: screenWidth,
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: [
                                  const Text(
                                    '\$15.69',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Spacer(),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Add To Cart',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
