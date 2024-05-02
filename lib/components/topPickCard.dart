import 'package:flutter/material.dart';
import 'package:peapod/constants/Appcolors.dart';

class TopPickCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String price;
  final String quantity;

  const TopPickCard({Key? key, 
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
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          width: screenWidth * 0.45,
          height: screenHeight * 0.3,
          decoration: BoxDecoration(
            color: Colors.grey[100] ?? Colors.transparent,
            border: Border.all(color: Colors.grey[200] ?? Colors.transparent),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(6, 6, 6, 0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage(imageUrl),
                    height: screenHeight * 0.18,
                    width: screenWidth * 0.5,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      const Spacer(),
                      IconButton(
                        color: AppColors.primaryColor,
                        onPressed: () {},
                        icon: const Icon(Icons.add_circle),
                      ),
                    ],
                  ),
                ),
                //SizedBox(height: screenHeight * 0.0001),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Row(
                    children: [
                      Text(
                        "\$$price",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: AppColors.priceColor),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                        child: Text(
                          quantity,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ),
                    ],
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
