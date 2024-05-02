import 'package:flutter/material.dart';
import 'package:peapod/components/profileOption.dart';
import 'package:peapod/constants/Appcolors.dart';

class profile extends StatelessWidget {
  const profile({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
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
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
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
                                Navigator.pushNamed(
                                    context, '/bottomnavigation');
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 15),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: screenWidth * 0.2,
                          backgroundImage: const AssetImage('assets/logo.png'),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        const Text(
                          'John Doe',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        Text(
                          'johndoe@gmail.com',
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[600]),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        const ProfileCard(
                          icon: Icons.edit_note_outlined,
                          title: 'Edit Profile',
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        const ProfileCard(
                          title: 'Favourites',
                          icon: Icons.favorite_border_rounded,
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        const ProfileCard(
                          title: 'Location',
                          icon: Icons.location_on_outlined,
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        const ProfileCard(
                          title: 'Log Out',
                          icon: Icons.logout_outlined,
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        const ProfileCard(
                          title: 'About',
                          icon: Icons.info_outline_rounded,
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
    );
  }
}
