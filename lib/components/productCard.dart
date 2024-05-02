import 'package:flutter/material.dart';
import 'package:peapod/constants/Appcolors.dart';

class productCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String price;
  final String quantity;

  const productCard({
    super.key,
    required this.title,
    required this.price,
    required this.quantity,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/productDetails');
      },
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Stack(
          children: [
            Positioned(
              top: screenWidth *
                  0.15, // Move the CircleAvatar down by its radius
              child: Container(
                height: screenHeight * 0.2,
                width: screenWidth * 0.4,
                decoration: BoxDecoration(
                  color: Colors.grey[100] ?? Colors.transparent,
                  border:
                      Border.all(color: Colors.grey[200] ?? Colors.transparent),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(
                        height: screenWidth *
                            0.15), // Make space for the CircleAvatar
                    Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(quantity),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      '\$$price',
                      style: const TextStyle(
                          color: AppColors.priceColor,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: screenWidth * 0.02,
              left: screenWidth * 0.065,
              child: CircleAvatar(
                radius: screenWidth * 0.13,
                backgroundImage: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ).image,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
