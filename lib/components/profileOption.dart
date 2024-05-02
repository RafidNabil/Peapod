import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProfileCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const ProfileCard({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Fluttertoast.showToast(
          msg: "$title Clicked",
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: screenHeight * 0.015, horizontal: screenWidth * 0.03),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey[200]!, width: 2),
        ),
        child: Row(children: [
          Container(
            child: Row(
              children: [
                Icon(
                  icon,
                ),
                SizedBox(width: screenWidth * 0.02),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios_rounded)
        ]),
      ),
    );
  }
}
