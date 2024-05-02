import 'package:flutter/material.dart';
import 'package:peapod/constants/Appcolors.dart';

class CartItems extends StatefulWidget {
  final String title;
  final String imageUrl;
  final String price;
  final String quantity;

  const CartItems({
    Key? key,
    required this.title,
    required this.price,
    required this.quantity,
    required this.imageUrl,
  }) : super(key: key);

  @override
  State<CartItems> createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    //double screenHeight = MediaQuery.of(context).size.height;
    //double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetImage(widget.imageUrl),
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(widget.quantity),
                    const SizedBox(height: 5),
                    Text(
                      '\$${widget.price}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.priceColor),
                    ),
                  ],
                ),
              ]),
            ),
            Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          count++;
                        });
                      },
                      icon: const Icon(
                        Icons.add_circle,
                        color: AppColors.primaryColor,
                        size: 20,
                      ),
                    ),
                    Text(count.toString()),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (count > 0) {
                            count--;
                          }
                        });
                      },
                      icon: const Icon(
                        Icons.remove_circle,
                        color: AppColors.primaryColor,
                        size: 20,
                      ),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
